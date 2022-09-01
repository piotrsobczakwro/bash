# Testowanie wartosci zmiennej (zmienna)
zmienna="wartosc"
test $zmienna
echo $?

# Tesotwanie wartosci zmiennej (zmienna) =  ""
zmienna=""
echo $zmienna
test $zmienna
echo $?

echo "Czy chcesz spelnic warunek"

read zmienna;
if test $zmienna = "T"
then
  echo "warunek spelniono: $?"
else
  echo "Warunek nie spelniony: $?"
fi


