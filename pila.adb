package body pila is 
    
procedure Limpiar(Pila:in out Tipopila)is 
begin
   Pila.Cabeza:=0;
   
end Limpiar;


function Vacia(Pila:in Tipopila)return boolean is 

begin
   return Pila.Cabeza=0;         
end Vacia;

      
function Llenar(Pila: in Tipopila)return boolean is 
begin
   return Pila.Cabeza=Pila.Tope;
    
end Llenar;

procedure Meter(Pila:in out Tipopila;Nuevo_Elemento: in Tipoelemento) is 
begin
   if not Llenar(Pila) then 
      Pila.Cabeza:=Pila.Cabeza+1;
      Pila.Elemento(Pila.Cabeza):=Nuevo_Elemento;
   end if;
    
end Meter;

procedure Sacar(Pila: in out Tipopila;Elemento_Sacado: out Tipoelemento) is 
begin
   if not Vacia(Pila) then 
      Elemento_Sacado:=Pila.Elemento(Pila.Cabeza);
      Pila.Cabeza:=Pila.Cabeza-1;
   end if;
    
end Sacar;

end pila;

