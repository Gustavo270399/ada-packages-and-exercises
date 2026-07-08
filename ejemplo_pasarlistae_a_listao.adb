with Ada.Integer_Text_Io, Ada.Text_Io;
with Lista, Lista_Ordenada;
use Ada.Integer_Text_Io, Ada.Text_Io;
--
procedure Ejemplo_Pasarlistae_A_Listao is
--
   package Listaint is new Lista(Integer);
   use Listaint;
   --
   function "<" (A,B:in Integer) return Boolean is
   begin
     return a < b;
   end;
   --
   function ">"(A,B:in Integer) return Boolean is
   begin
      return a > b;
   end;
   --
   package Listaint_o is new Lista_Ordenada(integer,"<",">");
   use Listaint_o;
   --listas principales
   Lista:Listaint.T_Lista;
   
   lista_o:listaint_o.t_lista;
   --
   procedure Ingresar_Datos(L:out Listaint.T_Lista)is
      Rta:Character;
      num:integer;
   begin
      crear_lista(L);
      Put("ingresar dato?");Get(Rta); New_Line;
      while Rta = 's' or Rta = 'S' loop
         Get(Num);
         Insertar_Lista(L,Num);
         Put("ingresar dato?");Get(Rta);New_Line;
      end loop;
      new_line;
   end Ingresar_Datos;
   --
   procedure Mostrar_Datos(L:in Listaint.T_Lista) is
      Num:Integer;
      ptr : listaint.t_lista := l;
   begin
      while not Vacia_lista(Ptr) loop
         Num := Info_Lista(Ptr);
         Put(Num);
         Ptr := Sig_Lista(Ptr);
      end loop;
   end Mostrar_Datos;
   --
   procedure Pasar_A_Ordenada(L1:in Listaint.T_Lista; L2:out Listaint_O.T_Lista)is
      Ptr: Listaint.T_Lista := L1;
      num:integer;
   begin
      Crear_Lista_Ordenada(L2);
      while not vacia_lista(Ptr) loop
         Num := Info_Lista(Ptr);
         put("numero sacado y yendose a la lista ord: ");put(num);new_line; 
         Insertar_Lista_Ordenada(L2,Num); 
         put_line("insertdao");
         Ptr:=Sig_Lista(Ptr);
      end loop;
   end Pasar_A_Ordenada;
   --
   procedure Mostrar_Datos_ordenado(Lo:in Listaint_o.T_Lista) is

   Num:Integer;
   ptr : listaint_o.t_lista := Lo;

begin

   Put_Line("MOSTRANDO ORDENADA");

   while not Vacia_Lista_Ordenada(Ptr) loop

      Put_Line("entre al while");

      Num := Info_Lista_Ordenada(Ptr);

      Put("NUM: ");
      Put(Num);
      New_Line;

      Put_Line("antes de sig");

      Ptr := Sig_Lista_Ordenada(Ptr);

      Put_Line("despues de sig");

   end loop;

end Mostrar_Datos_ordenado;
   -----------------------------------------------
begin
   Ingresar_Datos(Lista);
   New_Line;
   Put_Line("--------");
   New_Line;
   Mostrar_Datos(Lista);
   New_Line;
   Put_Line("--------");
   New_Line;
   Pasar_A_Ordenada(Lista,Lista_O);
   Mostrar_Datos_Ordenado(Lista_O);
   
end Ejemplo_Pasarlistae_A_Listao;

