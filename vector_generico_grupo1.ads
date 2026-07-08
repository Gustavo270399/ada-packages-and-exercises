generic

   type Tipodato is private;
   type Indice is (<>);

   with procedure Put(X : in Tipodato);
   with procedure Get(X : out Tipodato);

package Vector_Generico_Grupo1 is

   type Tipovector is array(Indice) of Tipodato;

   ------------------------------------------------
   -- Lee todos los elementos del vector
   ------------------------------------------------
   procedure Leer(Vector : out Tipovector);

   ------------------------------------------------
   -- Muestra todos los elementos del vector
   ------------------------------------------------
   procedure Imprimir(Vector : in Tipovector);

end Vector_Generico_Grupo1;