#include <stdio.h>
void main()
{
    //Festlegen von Variablen
    char answer[2]; //Antwort ja oder nein (j oder n)
    int steps = 0; //Gesamtzahl der Schritte
    int stepsPerWall = 0; //Anzahl Schritte pro Wand
    int collision = 0; //Anzahl der Drehungen
    int wall[4]; //Array zum Speichern der Schritte zur nächsten Wand

    char bewegung();
  
    printf("Man startet in der Ecke eines rechteckigen Raumes.\n\n");
    //Zwei Schleifen, da ich keine positiven Ergebnisse mit einer Doppelbedinung erzielen konnte
    do
        do
        {
            printf("Ist die Wand da?\nGeben Sie j für Ja und n für Nein ein!\n\n");
            scanf("%s",answer);
            //Abfrage ob Wand da ist
            if (answer[0] == 'j')
            {
                printf("Drehung!\n");
                collision++;
                wall[collision-1] = stepsPerWall;
                stepsPerWall = 0;
                switch(collision)
                {
                    case 1: printf("Diese Wand ist %i Schritte lang.\n", wall[0]);break;
                    case 2: printf("Diese Wand ist %i Schritte lang.\n", wall[1]);break;
                    case 3: printf("Diese Wand ist %i Schritte lang.\n", wall[2]);break;
                    case 4: printf("Diese Wand ist %i Schritte lang.\n", wall[3]);break;
                }
            }
            else if (answer[0] == 'n')
            {
                printf("Schritt!\n");
                steps++;
                stepsPerWall++;
            }
            else
            {
                printf("Falsche Eingabe! Geben Sie j für Ja und n für Nein ein");
                continue;
            }
            printf("%i Schritt(e) gegangen\n\n",steps);
        }
        //erste Bedingung: Antwort = nein
        while ( answer[0] != 'j');
    //zweite Bedingung: mindestens vier mal drehen(Raumumrundung)
    while (collision < 4);
    //Ausgabe der einzelnen Wandlängen
    printf("Länge der Wände in Schritten:\nErste Wand: %i\nZweite Wand: %i\nDritte Wand: %i\nVierte Wand: %i\n",wall[0],wall[1],wall[2],wall[3]);
        printf("Schritt(e) insgesamt: %i\n",steps);

}