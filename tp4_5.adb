with Ada.Integer_Text_Io, Ada.Text_Io;
with Lista_Ordenada;
use Ada.Integer_Text_Io, Ada.Text_Io;

--Supongamos que tenemos una lista combinada de alumnos de la Facultad ordenada
--alfabéticamente. Esta lista está compuesta de alumnos de Licenciatura y de Postgrado. Cada
--alumno lleva un dato adicional que indica si es alumno de Licenciatura o de Postgrado. Nuestra
--tarea es producir una lista impresa ordenada alfabéticamente de estudiantes de Licenciatura,
--Seguida De Otra Similar De Alumnos De Postgrado. 
      
procedure Tp4_5 is
   --------------------------------
   subtype Chara is String(1..20);
   --
   type Alumno is record
      Nombre:Chara;
      Long:Integer;
      Facu:Character; --L si es licen. y P si es postgrado
   end record;
   --
   function Mayor(A,B:Alumno) return Boolean is
   begin
      return A.Nombre > B.nombre;
   end Mayor;
   --
   function Menor(A,B:Alumno) return Boolean is
   begin
      return A.Nombre < B.nombre;
      end menor;
   --
   package L_Alumnos is new Lista_Ordenada(Alumno,menor,mayor);
   use L_Alumnos;
   --lista principal
   L:t_lista;
   --------------------------------
   procedure Cargar_Lista (L:in out T_lista) is
      taux:alumno;
   begin
      for I in 1..5 loop
         Put("ingrese nombre de alumno: ");
         get_line(Taux.Nombre,Taux.Long);
         New_Line;
         Put("ingrese a que Facu asiste: ");
         Get(Taux.Facu);
         Insertar_Lista_Ordenada(L,Taux);
         skip_linE; --indispensable si usas get_line y get juntos
         New_Line;
      end loop;
   end Cargar_Lista;
   --
   procedure Mostrar_Lista (L:in T_Lista) is
      Taux:Alumno;
      ptr:t_lista:=l;
   begin
      while not Vacia_Lista_Ordenada(ptr) loop
         taux:=info_lista_ordenada(ptr);
         Put(Taux.Nombre(1..taux.long));
         New_Line;
         Put(Taux.Facu);
         New_Line;
         ptr:=sig_lista_ordenada(ptr);
      end loop;
   end Mostrar_Lista;
   --
   procedure Mostrar_Lista_licen (L:in T_Lista) is
      Taux:Alumno;
      ptr:t_lista:=l;
   begin
      while not Vacia_Lista_Ordenada(ptr) loop
         Taux:=Info_Lista_Ordenada(Ptr);
         if Taux.Facu = 'l' or Taux.Facu = 'L' then
            
            Put(Taux.Nombre(1..taux.long));
            New_Line;
            Put(Taux.Facu);
         end if;
         New_Line;
         ptr:=sig_lista_ordenada(ptr);
      end loop;
   end Mostrar_Lista_Licen;
   --
   procedure Mostrar_Lista_post (L:in T_Lista) is
      Taux:Alumno;
      ptr:t_lista:=l;
   begin
      while not Vacia_Lista_Ordenada(ptr) loop
         Taux:=Info_Lista_Ordenada(Ptr);
         if Taux.Facu = 'p' or Taux.Facu = 'P' then
            Put(Taux.Nombre(1..taux.long));
            New_Line;
            Put(Taux.Facu);
         end if;
         New_Line;
         ptr:=sig_lista_ordenada(ptr);
      end loop;
      end mostrar_lista_post;
   --------------------------------
begin
   crear_lista_ordenada(l);
   Put_Line("---hola---");
   Cargar_Lista(L);
   new_line;
   Put_Line("---lista de alumnos---");
   Mostrar_Lista(L);
   New_Line;
   Put_Line("--lista de alumnos de licenciatura---");
   Mostrar_Lista_Licen(L);
   New_Line;
   Put_Line("---lista de alumnos de postgrado---");
   Mostrar_Lista_Post(L);
   
   
end Tp4_5;

