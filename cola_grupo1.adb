with Ada.Text_Io;
use ada.Text_IO;
package body Cola_grupo1 is
   

   --chequea si la cola esta vacia
   function vacia(Cola: Tipocola) return Boolean is
   
   begin
      
      return Cola.Frente=Cola.Final;
      
   end vacia;
   
   --Chaquea si la cola esta llena
   function llena(Cola: Tipocola) return Boolean is
      
      Siguiente:Positive;
      
   begin
   
      if Cola.Final=Cola.Max then
         Siguiente:=1;
      else
         Siguiente:=Cola.Final+1;--arreglo circular
      end if;
            
   return siguiente=cola.frente;
   
   end llena;
      
   --Inserta un elemento en la cola
   procedure Insertar(Cola: in out Tipocola; Item: in Tipodato) is
   
   begin
      
      if llena(Cola) then 
         raise Overflow; 
      else Cola.Final := Cola.Final rem Cola.Max + 1; --Rem resto de una division entera
      Cola.Elemento(Cola.Final) := Item; -- primero se resuelve el resto y despues la suma
      end if; 
      
      end insertar;
   
   --Elimina el primer elemento de la cola
   procedure suprimir(Cola: in out Tipocola; Item: out tipodato) is
   
   begin
      
      if Vacia(Cola) then 
         raise Underflow; 
      else Cola.Frente:= Cola.Frente rem Cola.Max + 1; 
      Item:= Cola.Elemento(Cola.Frente);
      end if;
      
   end suprimir;
   
   procedure Limpiar(Cola:in out Tipocola) is 
   begin
      Cola.Frente:=Cola.Max;
      Cola.Final:=Cola.Max; 
   end Limpiar;
   end cola_grupo1;

