with Ada.Text_Io, Ada.Integer_Text_Io, Lista;
use Ada.Text_Io, Ada.Integer_Text_Io;

--Desarrollar el programa que realice lo siguiente:
--   .Lea una lista A, cuyos nodos son una lista de caracteres.
--   .A partir de A, generar una lista B que contenga sólo aquellos nodos de A que estén repetidos
--consecutivamente en ella. 

procedure Tp4_6 is
   ------------------------------------------------
   subtype chara is string(1..20);
   type Registro is record
      Caracter:chara;
      long:integer;
   end record;
   --
   package Listac is new Lista(Registro);
   use Listac;
   --
   L:t_lista; --lista principal
   ------------------------------------------------
   procedure Crear_Lista_c(L:out T_Lista)is
      Taux:Registro;
      cont:integer;
   begin
      Crear_Lista(L);
      Cont:=0;
      for I in 1..3 loop
         Cont:=Cont+1;
         put_line("nodo " & integer'image(cont));
         Get_line(Taux.Caracter,taux.long);
         Insertar_Lista(L,Taux);
         new_line;
      end loop;
   end Crear_Lista_C;
   --
   procedure Mostrar_Lista_A(L:in T_Lista)is
      Taux:Registro;
      Ptr:T_Lista:=L;
   begin
      while not Vacia_lista(Ptr) loop
         Taux:=Info_Lista(ptr);
         Put(Taux.Caracter(1..taux.long));
         new_line;
         Ptr:=Sig_Lista(ptr);
      end loop;
   end Mostrar_Lista_A;
   --
   procedure Mostrar_Lista_B(L:in T_Lista)is
      Taux,taux2:Registro;
      Ptr:T_Lista:=L;
      Ptr2:T_Lista:=sig_lista(L);
   begin
      while not Vacia_Lista(Ptr2) loop
         taux2:=info_lista(ptr2);
         Taux:=Info_Lista(Ptr);
         if Taux.Caracter = Taux2.Caracter then           
            Put(Taux.Caracter(1..taux.long));
            New_Line;
         end if;
         Ptr:=Sig_Lista(Ptr);
         ptr2:=sig_lista(ptr2);
      end loop;
   end Mostrar_Lista_B;
   ------------------------------------------------
begin
   
   Crear_Lista_C(L);
   put_line("---lista A---");
   Mostrar_Lista_A(L);
   Put_Line("---LISTA B---");
   mostrar_lista_b(l);
   
      
    
end Tp4_6;

