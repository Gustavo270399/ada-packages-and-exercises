with Ada.Text_Io; use Ada.Text_Io;

package body Matriz_completo is    
-----------------[LEER]-----------------
procedure Leer (mat: out Tipomat)is 
   begin
      for I in fila'range loop
         for j in colunma'range loop
            Get(mat(i,j)); 
         end loop;
      end loop;
end Leer;
-----------------[IMPRIMIR]-----------------
procedure Imprimir (mat: in Tipomat) is
   begin
      for I in fila'range loop
         for j in colunma'range loop 
            Put(Mat(I,J));
         end loop;
         new_line;
       end loop;
   end Imprimir;
-----------------[IMPRIMIR TRANSPUESTA]-----------------
procedure Imprimirt (Mat: in Tipomatt) is
begin
   for I in colunma'range loop
      for j in fila'range loop 
         Put(Mat(I,J));
      end loop;
new_line;
   end loop;
end Imprimirt;
-----------------[COMPARAR, comparación entre matrices]-----------------
procedure comparacion (Mat1,mat2:in Tipomat; Porcentajema, Porcentajeme: out float) is
mayo, meno, total:integer;
begin
   Total:=0;
   Mayo:=0;
   Meno:=0;
   for I in Fila'range loop
      for J in Colunma'range loop
         Total:=Total+1;
            if (Mat1(I,J))>(Mat2(I,J)) then
               mayo:=mayo+1;
            elsif (Mat1(I,J))<(Mat2(I,J)) then
               Meno:=Meno+1;
            end if; 
               Porcentajema:=Float((Mayo*100)/Total);
               Porcentajeme:=Float((meno*100)/Total);   
      end loop;
   end loop;
end Comparacion;
-----------------[ORDENAMIENTO]-----------------
procedure Ordenar (A: in out tipomat;col: in colunma) is
Aux:Tipodato;
Cambio:Boolean;
tope:fila;
begin
   Tope:=fila'Last;
loop
   Cambio:=False;
      for I in fila'First..fila'pred(tope) loop
         if A(I,Col)>A(Fila'Succ(I),Col) then
            Cambio:=True;
               for J in colunma'Range loop
                  Aux:=A(I,J);
                  A(I,J):=A(fila'succ(i),J);
                  A(fila'succ(i),J):=Aux;
               end loop;
         end if;
      end loop;
exit when Tope=fila'first and not Cambio;
Tope:=fila'pred(tope);
end loop;
end Ordenar;
-----------------[BUSQUEDA]-----------------
procedure Busqueda (Mat:in Tipomat;X:in Tipodato; Marca:out Boolean; jota: out colunma;lai: out fila ) is
begin
   Marca:=False;
   for I in fila'range loop
      for j in colunma'range loop
            if x=mat(I,j) then 
               lai:=(I);
               jota:=(J);
               Marca:=True; 
            end if;
      end loop;    
   end loop; 
end Busqueda;
-----------------[TRANSPUESTA]-----------------
procedure Transpuesta  (mat: in tipomat; mattra: out tipomatt) is
   begin
      for I in Fila'range loop
         for J in Colunma'range loop
            Mattra(j,i):=Mat(I,J);         
         end loop;
      end loop;
end transpuesta;
-----------------
end Matriz_completo;
