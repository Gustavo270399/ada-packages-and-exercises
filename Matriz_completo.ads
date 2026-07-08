


generic 
   type Tipodato is private;
   type fila is (<>); 
   type colunma is (<>);
   with procedure Put (X: in Tipodato);
   with procedure Get (X: out Tipodato);
   with function To_Float (Item : tipodato) return Float is <>;
   with function ">" (A,B: Tipodato) return Boolean;
   with function "<" (A,B: Tipodato) return Boolean;   

   
package Matriz_completo is
      type Tipomat is array (Fila,Colunma) of Tipodato;
      type Tipomatt is array (Colunma, Fila) of Tipodato;
      procedure Leer (mat: out Tipomat);
      procedure Imprimir (mat: in Tipomat);
      procedure Imprimirt (mat: in Tipomatt);
      procedure comparacion (mat1, mat2: in Tipomat; Porcentajema, Porcentajeme: out float);
      procedure Busqueda (Mat:in Tipomat;X:in Tipodato; Marca:out Boolean; jota: out colunma;lai: out fila );
      procedure Ordenar (A: in out Tipomat; Col : in Colunma);
      procedure Transpuesta  (mat: in tipomat; mattra: out tipomatt);     

end Matriz_completo;
   