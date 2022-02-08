#include <stdio.h>
void main()
{
    //Festlegen von Variablen
    char answer[2]; //Antwort ja oder nein (j oder n)
    int steps = 0; //Gesamtzahl der Schritte

    char bewegung();
  
    printf("Man startet an einem Punkt in einem runden Raum!\n\n\n");
    //Zwei Schleifen, da ich keine positiven Ergebnisse mit einer Doppelbedinung erzielen konnte
    do
        do
        {
            printf("Bin ich wieder beim Startpunkt?\nj für Ja und n für Nein eingeben!\n");
            scanf("%s",answer);
            //Abfrage ob Ausgangspunkt erreicht wurde
            if (answer[0] == 'j');
           
            else if (answer[0] == 'n')
            {
                printf("Schritt!\n");
                steps++;
            }
            else
            {
                printf("Falsche Eingabe! Geben Sie j für Ja und n für Nein ein!\n\n");
                continue;
            }
            printf("%i Schritt(e) gegangen\n\n",steps);
        }
        //erste Bedingung: Antwort = nein
        while ( answer[0] != 'j');
    while (answer < 0);
    printf("Länge des runden Raumes in Schritte: %i\n",steps);
    //Ausgabe der Schritte bis zum Ausgangspunkt
}