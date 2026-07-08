generic

   type Tipodato is private;

package cola_dinamica is

   Colavacia : exception;

   type Tipopuntero is private;

   type Tipocola is private;

   procedure Crear(Cola : out Tipocola);

   function Vacia(Cola : Tipocola) return Boolean;

   procedure Insertar(Cola: in out Tipocola;Elemento:in Tipodato);

   procedure Suprimir(Cola: in out Tipocola;Elemento:out Tipodato);

   procedure Limpiar (Cola : in out Tipocola);

private

   type Tiponodo;

   type Tipopuntero is access Tiponodo;

   type Tiponodo is record
      Info : Tipodato;
      Sig  : Tipopuntero;
   end record;

   type Tipocola is record
      Frente : Tipopuntero;
      Final  : Tipopuntero;
   end record;

end cola_dinamica;