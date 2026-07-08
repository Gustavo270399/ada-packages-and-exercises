with Ada.Unchecked_Deallocation;

package body cola_dinamica is

   procedure Free is new Ada.Unchecked_Deallocation
     (Tiponodo, Tipopuntero);

   ---------------------------------------------------

   procedure Crear (Cola : out Tipocola) is
   begin
      Cola.Frente := null;
      Cola.Final  := null;
   end Crear;

   ---------------------------------------------------

   function Vacia (Cola : Tipocola) return Boolean is
   begin
      return Cola.Frente = null;
   end Vacia;

   ---------------------------------------------------

   procedure Insertar
     (Cola    : in out Tipocola;
      Elemento : in Tipodato) is

      Nuevonodo : Tipopuntero :=
        new Tiponodo'(Elemento, null);

   begin

      if Vacia(Cola) then
         Cola.Frente := Nuevonodo;
      else
         Cola.Final.Sig := Nuevonodo;
      end if;

      Cola.Final := Nuevonodo;

   end Insertar;

   ---------------------------------------------------

   procedure Suprimir
     (Cola    : in out Tipocola;
      Elemento : out Tipodato) is

      Temp : Tipopuntero := Cola.Frente;

   begin

      if Vacia(Cola) then
         raise Colavacia;
      else
         Elemento := Cola.Frente.Info;
         Cola.Frente := Cola.Frente.Sig;
      end if;

      if Cola.Frente = null then
         Cola.Final := null;
      end if;

      Free(Temp);

   end Suprimir;

   ---------------------------------------------------

   procedure Limpiar (Cola : in out Tipocola) is

      Temp : Tipopuntero := Cola.Frente;

   begin

      while not Vacia(Cola) loop
         Cola.Frente := Cola.Frente.Sig;
         Free(Temp);
         Temp := Cola.Frente;
      end loop;

      Cola.Final := null;

   end Limpiar;

   ---------------------------------------------------

end cola_dinamica;