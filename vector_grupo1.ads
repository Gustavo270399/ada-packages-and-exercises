--Programar el package genérico completo para arreglos uni dimensionales

generic 
   type Tipodato is private;
   type Indice is (<>);
   Valorinicial:Tipodato;--cuando utilizo acumulador o conta
   --cuando se instancie en programa principal se pone un 0 
   with procedure Put(X: in Tipodato);
   with procedure Get(X:out Tipodato);
   with function "+" (A,B:in  Tipodato)return Tipodato;
   with function "*"(A,B: in  Tipodato)return Tipodato;
   with function "<"(A,B:in tipodato)return boolean;
   with function ">"(A,B:in tipodato)return boolean;

   package Vector_Grupo1 is 
      
      type Tipovector is array (Indice) of Tipodato;
      
      procedure Leer (V: out Tipovector);
      
      procedure Imprimir(V: in Tipovector); 
         
      function Sumatoria ( Vec1,Vec2: Tipovector)return Tipodato;
      
      function proVec (vec1, vec2: tipovector) return tipovector;
      
   end Vector_grupo1;







