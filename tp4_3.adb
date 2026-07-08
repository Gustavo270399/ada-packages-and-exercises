with Ada.Integer_Text_Io, Ada.Text_Io, Vector_generico_Grupo1, Pila_Grupo1_Dinamica;
use Ada.Integer_Text_Io, Ada.Text_Io;

procedure Tp4_3 is
   
--Dado un vector cuyos elementos son pilas (con implementación dinámica) de registros
--compuestos por dos campos, uno de tipo entero y el otro de tipo carácter, programar un
--procedimiento que permita obtener el promedio de los valores enteros contenidos en los registros
--que están en el tope de cada pila. Se debe conservar la información almacenada en la
--estructura. 

   --registro y invo. package pila dinamica-----
   type Registro is record
      Enteros:Integer;
      Caracter:Character;
   end record;
   --
   package Pilareg is new Pila_Grupo1_Dinamica(Registro);
   use Pilareg;
   --pila dinamica
   --Pd:Tipopila;
   ---------------------------------------------
   --
   --
   -----proc./func. y invo. pacakge vector de pil---
   procedure  Getin (X:out tipopila) is
   begin
      null;
   end Getin;
   --
   procedure Putin(X:in tipopila) is
   begin
      null;
   end Putin;
   --
   subtype Rango is Integer range 1..2;
   --
   package Vecpil is new Vector_generico_Grupo1(tipopila,rango,putin,getin);
   use Vecpil;
   ------------------------------------------------
   --
   --
   ----procedimientos------------------------------
   procedure Ingresar_Datos(Pil:in out Tipopila)is
      Taux:Registro;
      rta:character;
   begin
      Crear(Pil);
      Put("quiere agregar datos a esta pila?(S/N)");
      Get(Rta);
      while rta = 's' or rta = 'S' loop
         Put("ingrese numero: "); Get(Taux.Enteros);New_Line;
         Put("ingrese nombre: "); Get(Taux.Caracter);New_Line;
         Meter(Pil,Taux);
         Put("quiere agregar mas datos a esta pila?(S/N)");
         Get(Rta);
      end loop;
   end Ingresar_Datos;
   --
   procedure crear_vector(Vec:in out Tipovector) is
      Pil:Tipopila;
      cont:integer;
   begin
      cont:=0;
      for I in Vec'range loop
         cont:=cont+1;
         Put("pila: " & Integer'Image(Cont));
         new_line;
         Ingresar_Datos(Pil);
         vec(I):=pil;
      end loop;
   end crear_vector;
   -------------------------------------------------
   procedure Mostrar_Pila(Pil:in out Tipopila) is
      Taux:Registro;
      paux:tipopila;
   begin
      crear(paux);
      while not Vacia(Pil) loop
         Sacar(Pil,Taux);
         Put("numero: ");Put(Taux.Enteros);New_Line;
         Put("caracter: ");Put(Taux.Caracter);New_Line;
         meter(paux,taux);
      end loop;
      --
      while not Vacia(Paux) loop
         Sacar(paux,Taux);
         meter(pil,taux);
      end loop;
   end Mostrar_Pila;
   --
   procedure Mostrar_Vector(Vec:in Tipovector) is
      Pil:Tipopila;
   begin
      for I in Vec'range loop
         pil:=vec(I);
         Mostrar_Pila(Pil);
         new_line;new_line;
      end loop;
   end Mostrar_Vector;
   --varibles principales y programa principal------ 
   vector:tipovector;
begin
   Put_Line("---hola hijo de puta---");
   Crear_Vector(Vector);
   Put_Line("-------------");
   Put_Line("-------------");
   Put_Line("-------------");
   Mostrar_Vector(Vector);
   Put_Line("-------------");
   Put_Line("-------------");
   Put_Line("-------------");
   mostrar_vector(vector);
end Tp4_3;

