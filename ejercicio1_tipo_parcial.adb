with Ada.Integer_Text_Io, Ada.Text_Io, Lista, cola_grupo1_dinamica;
use Ada.Integer_Text_Io, Ada.Text_Io;
-----------------------------------------------------------------------------------------------------  
--EJERCICIO 1

--En una empresa de correo privado se registran diariamente las encomiendas que llegan a cada sucursal.

--Cada sucursal posee un código identificador y almacena las encomiendas pendientes de entrega.
--De cada encomienda se conoce:

--número de seguimiento,
--peso del paquete,
--tipo de envío (E exprés, C común).

--Se pide:

--a) Instanciar el o los packages necesarios.

--b) Obtener el código de todas las sucursales que posean al menos una encomienda de tipo exprés cuyo peso supere los 20kg.

--c) Mostrar el número de seguimiento de la próxima encomienda a entregar en cada sucursal.

--D) Conservar Completamente La Información Almacenada.
-----------------------------------------------------------------------------------------------------      
procedure Ejercicio1_Tipo_Parcial is
   ------------------------------------------------------------------------------
   type Encomienda is record
      Nro_Seg:Integer;
      Peso_Pack:Integer;
      Tipo_Envio:Character;
   end record;
   ------------------------------------------------------------------------------
   package Col_Enco is new Cola_Grupo1_Dinamica(Encomienda);
   use Col_Enco;
   ------------------------------------------------------------------------------
   --
   --
   ------------------------------------------------------------------------------
   type Sucursal is record
      Cod_Id:Integer;
      Enco_Pen:Tipocola;
   end record;
   ------------------------------------------------------------------------------
   package Lis_Sucu is new Lista(sucursal);
   use Lis_Sucu;
   ------------------------------------------------------------------------------
   --
   --
   --lista principal
   Lista:T_Lista;
   --
   --
   ------------------------------------------------------------------------------
   procedure Crear_Cola_Enco(Col:out Tipocola) is
      Taux:Encomienda;
      rta:character;
   begin
      crear(col);
      Put("ingresar enco?: ");Get(Rta);New_Line;
      while Rta = 's' or Rta = 'S' loop
         Put("ingrese numero de seguimiento: "); Get(Taux.Nro_Seg); New_Line;
         Put("ingrese peso del paquete: "); Get(Taux.Peso_Pack); New_Line;
         Put("ingrse tipo de envio ( E o C): "); Get(Taux.Tipo_Envio);New_Line;
         --
         Insertar(Col,Taux);
         --
         put("agregar otra encomienda?: "); get(rta); new_line;
      end loop;
      new_line;
   end Crear_Cola_Enco;
   --
   procedure Crear_Sucursales(L:out T_Lista) is
      Taux:Sucursal;
      rta:characteR;
   begin
      Crear_Lista(L);
      Put("ingresar sucursal?: "); Get(Rta); New_Line;
      while Rta = 's' or Rta = 'S' loop
         Put("ingrese codigo verificador de la sucursal: "); Get(Taux.Cod_Id);New_Line;
         Put_Line("ingresando a la cola de encomiendas...");
         Crear_Cola_Enco(Taux.Enco_Pen);
         put_line("cola de encomiendas finalizada..");
         Insertar_Lista(L,Taux);
         put("ingresar otra sucursal?: "); get(rta);new_line;
      end loop;
   end Crear_Sucursales;
   --
   --
   --
   ------------------------------------------------------------------------------
   procedure ver_Enco(Col:in out Tipocola; c:out character)is
      Taux:Encomienda;
      caux:tipocola;
   begin
      crear(caux); 
      c:='n';
      while not Vacia(Col) and c /= 's' loop
         Suprimir(Col,Taux);
         --
         if Taux.Peso_Pack > 20 then
            if (Taux.Tipo_Envio = 'e' or Taux.Tipo_Envio = 'E') then
               
               C:='s';
            end if;
         end if;
         --
         Insertar(Caux,Taux);
         --
      end loop;
      --
      while not Vacia(Col) loop

         Suprimir(Col,Taux);
         
         Insertar(Caux,Taux);
         
      end loop;

      while not Vacia(Caux) loop
         
         Suprimir(Caux,Taux);
         
         Insertar(Col,Taux);
         
      end loop;
   end ver_Enco;
   --
   procedure Mostrar_sucu_mas20(L:in T_Lista) is
      ptr : t_lista := l;
      Taux:Sucursal;
      rta:character;
   begin
      while not Vacia_Lista(Ptr) loop
         Taux := Info_Lista(Ptr);
         --
         ver_Enco(Taux.Enco_Pen,Rta);
         --
         if Rta = 's' then
            Put("sucursal: "); Put(Taux.Cod_Id);
         end if;
         New_Line;
         --
         Ptr:=Sig_Lista(Ptr);
      end loop;
   end Mostrar_Sucu_Mas20;
   --
   --
   -------------------------------------------------------------------------------
   procedure Primer_Enco(Col:in out Tipocola)is
      Taux:Encomienda;
      aux:tipocola;
   begin
      Crear(Aux);
      --
      Suprimir(Col,Taux);
      put("proxima encomienda para entregar: ");
      Put(Taux.Nro_Seg);new_line;
      Insertar(Aux,Taux);
      --
      while not Vacia(Col) loop
         Suprimir(Col,Taux);
         Insertar(Aux,Taux);
      end loop;
      --
      while not Vacia(Aux) loop
         Suprimir(Aux,Taux);
         Insertar(Col,Taux);
      end loop;
   end Primer_Enco;
   --
   procedure Mostrar_Sucu_1paquete(L:in T_Lista) is
      ptr : t_lista := l;
      Taux:Sucursal;
   begin
      while not Vacia_lista(Ptr) loop
         Taux:=Info_Lista(Ptr);
         --
         Put("sucursal: "); Put(Taux.Cod_Id); New_Line;
         Primer_Enco(Taux.Enco_Pen);
         -- 
         Ptr:=Sig_Lista(Ptr);
      end loop;
   end Mostrar_Sucu_1paquete;
   
   ------------------------------------------------------------------------------
begin
   Put_Line("--hola hijo de puta--");
   Crear_Sucursales(Lista);
   New_Line;
   Put("------");
   New_Line;
   put_line("sucursales que posean al menos una encomienda de tipo exprés cuyo peso supere los 20kg: ");
   new_line;
   Mostrar_Sucu_Mas20(Lista);
   New_Line;
   Put("------");
   New_Line;
   put_line("Mostrar el número de seguimiento de la próxima encomienda a entregar en cada sucursal: ");
   new_line;
   mostrar_sucu_1paquete(lista);
   
end Ejercicio1_Tipo_Parcial;

