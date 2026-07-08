
package body vector_completo is
    
   procedure Leer(V:out Tipovector)is 
   begin 
      for I in Indice'range loop
         Get(V(I));
      end loop;
   end Leer; 
   
   function Provec( Vec1,Vec2: Tipovector) return Tipovector is
   vec: tipovector;
   begin
      for I in Indice'range loop
         vec(i):= vec1(i)* vec2(i);
      end loop;
      return vec;
   end Provec;
   
   
   procedure Imprimir (V:in Tipovector) is
   begin 
      for I in Indice'range loop
         Put(V(I));
      end loop;
      
   end Imprimir;
   function Sumatoria (vec1,vec2: tipovector) return Tipodato is
   suma:tipodato:=valorinicial;
   begin
      for I in Indice'range loop
         Suma:= Suma + Vec1(I) + Vec2(I);
         end loop;
         return suma;
   end Sumatoria;

 
end vector_completo;

