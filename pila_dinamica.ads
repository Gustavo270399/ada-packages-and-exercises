generic
   
   type Tipodato is private;
   

   package pila_dinamica is
      

      Pilavacia : exception;
      

      type Tipopila is private;
      

      procedure Crear (Pila : in out Tipopila);
      

      function Vacia (Pila : Tipopila) return Boolean;
      

      procedure Meter(Pila : in out Tipopila; Elemento : in Tipodato);
      

      procedure Sacar(Pila : in out Tipopila;Elemento : out Tipodato);
      

      procedure Limpiar (Pila : in out Tipopila);
      

      private
         

      type Tiponodo;
      

      type Tipopila is access Tiponodo;
      

      type Tiponodo is record
         
         Info : Tipodato;
         
         Sig  : Tipopila;
         
      end record;
      

   end pila_dinamica;
