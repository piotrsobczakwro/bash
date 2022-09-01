
# Dluglosc zmiennej 
imie="Piotr"
dlugoscImienia=${#imie}
ostatniaLitera=${imie:$dlugoscImienia-1}
echo $ostatniaLitera

echo ${#imie}
# Wycinek zmiennej
echo ${imie:3}

echo ${imie:0}

## Operacje na stringach

system="MacOS"
wersja="X"

nazwa=$system" "$wersja

echo $nazwa

# Bad example:

echo $nazwa:2:3

# Returns : MacOS X:2:3


# Podwojne rozwiniecie zmiennej

zmiennaA="zmiennaB"
zmiennaB="Prawdziwa wartosc"
echo "przed rozwinieciem zminnej $zmiennaA"
echo ${!zmiennaA}

echo $zmiennaA
echo $zmiennaB