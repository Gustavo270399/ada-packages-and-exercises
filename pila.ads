generic 
   type Tipoelemento is private;
   
   package pila is 
      
      type Tipopila (Tope:Positive) is private;--parte visible
      
      procedure Limpiar(Pila:in out Tipopila);
      
      function Vacia(Pila:in Tipopila)return Boolean;
      
      function Llenar(Pila: in Tipopila)return Boolean;
      
      procedure Meter(Pila:in out Tipopila;Nuevo_Elemento: in Tipoelemento);
      
      procedure Sacar(Pila: in out Tipopila;Elemento_Sacado: out Tipoelemento);
      

      private---parte oculta
         
      type Arrpila is array (Positive range <>) of Tipoelemento;
      
      type Tipopila(Tope:Positive) is  record
         Cabeza:Natural:=0;
         Elemento: Arrpila(1..tope);
      end Record;
      


   end pila;
         
         
