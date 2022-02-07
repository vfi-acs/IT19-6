//Einbinden der Standard-I/O Bibiliothek
#include<stdio.h>

void main ()
{
	//Variablendeklaration
	int zahl = 0;		// Deklaration mit Datentyp
						// Datentypen: Art der zu speichernden Info
	//EINGABE
	//Eingabeaufforderung
	printf("Bitte gib eine Ganze Zahl ein: (Ohne Komma)");
		
		//NUTZEREINGABE
		scanf("%d", &zahl);
			// %d 	 --> Formatzeichen (Platzhalter)
			// &zahl --> Speicheradresse der Variablen
			
			//VERARBEITUNG
			if(zahl % 2 == 0)
			{ 
				zahl *2; 		// zahl = zahl *2
			}
			else
			{
				zahl ++; 		//zahl = zahl + 1
			}
			
			
			//AUSGABE
			printf("Das Ergebnis lautet: %d ",zahl);
				
}