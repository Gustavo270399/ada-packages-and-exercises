generic

   type Tipodato is private;
   type Indice is (<>);

   with procedure Put(X : in Tipodato);
   with procedure Get(X : out Tipodato);

package vector_generico is

   type Tipovector is array(Indice) of Tipodato;

   ------------------------------------------------
   -- Lee todos los elementos del vector
   ------------------------------------------------
   procedure Leer(Vector : out Tipovector);

   ------------------------------------------------
   -- Muestra todos los elementos del vector
   ------------------------------------------------
   procedure Imprimir(Vector : in Tipovector);

end Vector_Generico;





































--caso base son los return que termina la recursividad

--mod y rem son operadores que te devuelven el resto de una división. 

--si la divison tiene negativo, rem mantiene esa negacion

--porcentaje (parte * 100) / total. EJ El 5% de 75 sería: 75 * 5 / 100

--promedio = suma / cantidad (suma de todos los valores / cantidad de valores)

--t'Length =Cantidad de elementos. t(a,b,c) = t'leght = 3

--'Reverse_Range recorre al reves

--'Pos Devuelve la posición numérica de un enumerado.

--'Val Hace lo contrario de 'Pos.

--'Succ y 'pred siguiente y anterior valor

--La función realiza la suma recursiva de los elementos del vector hasta la posición indicada por num.
--La función quehace recorre el vector de manera recursiva realizando una sumatoria de sus elementos, desde la posición 1 hasta la posición num.
--En cada llamada recursiva disminuye el valor de num en 1 hasta llegar al caso base (num <= 0), donde retorna 0.

--La función recorre recursivamente el vector y retorna la suma total de todos sus elementos.
