#!/bin/bash

        echo "Cu ce vrei sa lucrezi?"
        echo "1. Fisiere"
        echo "2. Directoare"
        echo "3. Iesire"
        echo "Alege: "
        read var1;
        if [ $var1 -eq 1 ];
        then
                echo "Care este numele fisierului? (cale absoluta)"
        echo "Nume fisier: "
        read cf;
        if [ -f "$cf" ];
        thenecho "Ce operatie vrei sa faci? "
        echo "1. Deschidere"
echo "2. Stergere"
echo "3. Mutare/Redenumire"
echo "4. Modificare permisiuni"
echo "5. Verificare permisiuni"
read var2;
if [ $var2 -eq 1 ];
then
    cat $cf
elif [ $var2 -e1 2];
then 
    rm $cf
elif [ $var2 -e1 3 ];
then 
echo "Care este destinatia?(cale absoluta) "
read dest;
mv $cf $dest
elif [ $var2 -eq 4 ];
then
    echo "Ce permisiuni ai vrea sa pui la fisier?(ex: 754 pentru rwxr-xr--)"
read perm;
chmod $perm $cf
elif [ $var2 -eq 5 ];
then    
     ls -l $cf
fi
else
echo " Fisierul $cf nu exista"
fi
elif [ $var1 -eq 2 ];
then 
echo "Care este numele directorului?(cale absoluta)"
echo "Nume director: "
read nd;
if [ -d "$nd" ];
then
echo "Ce operatie vrei sa faci?"
echo "1. Afisare continut"
echo "2. Stergere"
echo "3. Mutare/Redenumire"
echo "4. Modificare permisiuni"
echo "5. Verificare permisiuni"
read var3;
if [ $var3 -eq 1];
then
ls $nd
elif [ $var3 -eq 2];
then rm -r $nd
elif [ $var3 -eq 3 ];
then
echo "Care este destinatia?(cale absoluta)"
read dest2;
mv $nd $dest2;
elif [ $var3 -eq 4 ];
then
echo "Ce permisiuni ai vrea sa pui la director?(ex: 754 pentru) rwxr-xr--"
read perm2;
chmod $perm2 $nd
elif [ $var3 -eq 5 ];
then
ls -l $nd
fi
else 
echo "Directorul $nd nu exista"
fi
fi