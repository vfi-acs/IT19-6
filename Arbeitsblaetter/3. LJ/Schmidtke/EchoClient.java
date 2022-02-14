import java.io.IOException;
import java.net.*;

public class EchoClient
{
    public static void main(String[] args)
    {
        InetAddress targetIP;
        DatagramSocket udpSocket;
        DatagramPacket packetOut;
        DatagramPacket packetIn;
        String echoServer   = args[0];
        int serverPort      = Integer.parseInt(args[1]);
        byte[] sendData     = args[2].getBytes();
        //
        // CHECKING FOR INPUT ERROR
        if(args.length != 3)
        {
            System.err.println("Insufficient parameters\nCall: ./java-network.sh -e <IP-Address> <Port> <ECHO>");
            System.exit(1);
        }
        try
        {
            targetIP    = InetAddress.getByName(echoServer);
            packetOut   = new DatagramPacket(sendData,0,sendData.length,targetIP,serverPort);
            udpSocket   = new DatagramSocket();
            packetIn    = new DatagramPacket(new byte[1024],1024);
            udpSocket.setSoTimeout(5000);
            udpSocket.send(packetOut);
            System.out.println("Packet sent...");
            udpSocket.receive(packetIn);
            System.out.print(new String(packetIn.getData(),packetIn.getOffset(),packetIn.getLength()));
        }
        catch (UnknownHostException u)
        {
            System.err.println("Host unknown or unreachable");
            //u.printStackTrace();
        }
        catch (SocketException s)
        {
            System.err.println("Socket Exception");
            //s.printStackTrace();
        }
        catch (IOException i)
        {
            System.err.println("IO Exception");
            //i.printStackTrace();
        }
    }
}
