generic
   
   type tipodato is private;

   package cola_grupo1 is
      
      type tipoCola(max: positive) is private;
      Overflow,Underflow:exception;
      
      function Vacia (cola : tipocola) return Boolean;
      --chaquea si la cola esta vacia
      
      function llena(cola : tipocola) return Boolean;
      --chequea si la cola esta llena
      
      procedure insertar( cola : in out tipocola;Item : in tipodato);
      --Inserta un elemento en la cola
      
      procedure suprimir(cola : in out tipocola; Item: out tipodato);
      --Elimina el primer elemento de la cola
      
      procedure Limpiar(Cola:in out Tipocola);
      
      private
      
      type Arreglocola is array(Positive range <>) of Tipodato;
      
      type Tipocola(Max: Positive) is--cuando instanciamos lo hacemos con max +1
         
         record
            
            Elemento:Arreglocola(1..Max);
            frente:positive:=max;-- al frente debe indicar la posicion que precede al primero
            final:positive:=max;      

      end record;
      

end cola_grupo1;
