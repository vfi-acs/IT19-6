//Einbinden der Standard-I/O Bibiliothek
#include<stdio.h>

void main ()
{
	//Variablendeklaration
	int zahl = 0;		// Deklaration mit Datentyp
						// Datentypen: Art der zu speichernden Info
	//EINGABE
	//Eingabeaufforderung
	printf("Gib den Monat in Zahl ein!:");
		
		//NUTZEREINGABE
		scanf("%d", &zahl);
			// %d 	 --> Formatzeichen (Platzhalter)
			// &zahl --> Speicheradresse der Variablen
			
			//VERARBEITUNG
			if(zahl == 1)
			{
				printf("Januar");
			}
			  if(zahl == 2)
			  {
				printf("Februar");
			}
			  if(zahl == 3)
			  {
				printf("März");
			}
			  if(zahl == 4)
			  {
				printf("April");
			}
			  if(zahl == 5)
			  {
				printf("Mai");
			}
		      if(zahl == 6)
			  {
				printf("Juni");
			}
			  if(zahl == 7)
			  {
				printf("Juli");
			}
			  if(zahl == 8)
			  {
				printf("August");
			}
			  if(zahl == 9)
			  {
				printf("September");
			}
		      if(zahl == 10)
			  {
				printf("Oktober");
			}
			  if(zahl == 11)
			  {
				printf("November");
			}
			  if(zahl == 12)
			  {
				printf("Dezember");
			}
			if (zahl != 1 && zahl != 2 && zahl != 3 && zahl != 4 && zahl != 5 && zahl != 6 && zahl != 7 && zahl != 8 && zahl != 9 && zahl != 10 && zahl != 11 && zahl != 12)
			{
				printf("Fehler Monat nicht gefunden!"); 		//zahl = Monat
			}
			
			
			//AUSGABE
		
				
}