package body vector_generico is

   ------------------------------------------------
   -- Carga elementos en el vector
   ------------------------------------------------
   procedure Leer(Vector : out Tipovector) is
   begin

      for I in Vector'Range loop
         Get(Vector(I));
      end loop;

   end Leer;

   ------------------------------------------------
   -- Muestra elementos del vector
   ------------------------------------------------
   procedure Imprimir(Vector : in Tipovector) is
   begin

      for I in Vector'Range loop
         Put(Vector(I));
      end loop;

   end Imprimir;

end vector_generico;