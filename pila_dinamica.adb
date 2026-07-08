with Ada.Unchecked_Deallocation;

package body pila_dinamica is

   procedure Free is new Ada.Unchecked_Deallocation
     (Tiponodo, Tipopila);

   ---------------------------------------------------

   procedure Crear (Pila : in out Tipopila) is
   begin
      Pila := null;
   end Crear;

   ---------------------------------------------------

   function Vacia (Pila : Tipopila) return Boolean is
   begin
      return Pila = null;
   end Vacia;

   ---------------------------------------------------

   procedure Meter
     (Pila    : in out Tipopila;
      Elemento : in Tipodato) is

      Nuevonodo : Tipopila :=
        new Tiponodo'(Elemento, Pila);

   begin
      Pila := Nuevonodo;
   end Meter;

   ---------------------------------------------------

   procedure Sacar
     (Pila    : in out Tipopila;
      Elemento : out Tipodato) is

      Temp : Tipopila := Pila;

   begin

      if Vacia(Pila) then
         raise Pilavacia;
      else
         Elemento := Pila.Info;
         Pila := Pila.Sig;
         Free(Temp);
      end if;

   end Sacar;

   ---------------------------------------------------

   procedure Limpiar (Pila : in out Tipopila) is

      Temp : Tipopila := Pila;

   begin

      while not Vacia(Pila) loop
         Pila := Pila.Sig;
         Free(Temp);
         Temp := Pila;
      end loop;

   end Limpiar;

   ---------------------------------------------------

end pila_dinamica;