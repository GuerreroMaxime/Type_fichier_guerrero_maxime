{program:Fichiers_Guerrero_Maxime;
 But: Tester les fichiers
 Entrer: Les valeurs a entrer dans les fichier
 Sorie: Les valeurs rentrer

Variable:

    Fichier:Fichier de texte
    nom:Chaine de caractere;
    nom2:Chaine de caractere;
    choix:integer;

Debut:

    Ecrire('Programme Fichiers');
    Assigner(Fichier,'nom.txt');
    Ouvrir(Fichier);
    Ecrire('Entrez un nom');
    Lire(nom);
    Fermer(Fichier);
    Ecrire('Voulez-vous lire le fichier? Marquer 1 pour lire');
    Lire(choix)

    Si (choix=1) alors
        Bebut
            Ouvrir(Fichier);
            Lire(Fichier,nom2);
            Ecrire(nom2);
            Fermer(Fichier)       
        Finsi;

Fin.
}


program Fichiers_Guerrero_Maxime;

uses crt;

var
    Fichier:TextFile
    nom:string;
    nom2:string;
    choix:integer;

BEGIN
    clrscr;

    writeln('Programme Fichiers');

    Assign(Fichier,'nom.txt');
    Open(Fichier);
    writeln('Entrez un nom');
    readln(nom);
    close(Fichier);
    writeln('Voulez-vous lire le fichier? Marquer 1 pour lire');
    Readln(choix)

    if (choix=1) then
        BEGIN
            Reset(Fichier);
            readln(Fichier,nom2);
            writeln(nom2);
            close(Fichier)       
        END;

    readln;


END.