import java.net.*;
import java.io.*;

public class EchoServer
{
    public static void main(String[] args)
    {
        DatagramSocket serverSocket;
        DatagramPacket packetIn;
        DatagramPacket packetOut;
        InetAddress clientAddress;
        int clientPort;
        byte[] sendingDataBuffer;
        byte[] receivingDataBuffer  = new byte[1024];
        //
        // CHECKING FOR INPUT ERROR
        if (args.length != 2)
        {
            System.err.println("Insufficient parameters\nCall: ./java-network.sh -E <Port> <Timeout>");
            System.exit(1);
        }
        try
        {
            serverSocket        = new DatagramSocket(Integer.parseInt(args[0]));
            packetIn            = new DatagramPacket(receivingDataBuffer,receivingDataBuffer.length);
            serverSocket.setSoTimeout(Integer.parseInt(args[1]));
            serverSocket.receive(packetIn);
            System.out.println("Packet received...");
            clientAddress       = packetIn.getAddress();
            clientPort          = packetIn.getPort();
            sendingDataBuffer   = new String(packetIn.getData()).getBytes();
            packetOut           = new DatagramPacket(sendingDataBuffer, sendingDataBuffer.length,clientAddress,clientPort);
            System.out.println("Sending packet ...");
            serverSocket.send(packetOut);
            System.out.println("Closing socket ...");
            serverSocket.close();
        }
        catch (SocketException s)
        {
            System.err.println("Socket timeout, closing ...");
            System.exit(1);
        }
        catch (IOException i)
        {
            System.err.println("IO Exception. Dumping stack trace ...");
            i.printStackTrace();
        }
    }
}
