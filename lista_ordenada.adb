with Ada.Unchecked_Deallocation; 

package body Lista_ordenada is 

   
---------------------------------------------------------------------   
   procedure Free is new Ada.Unchecked_Deallocation(TipoNodo,T_lista);
---------------------------------------------------------------------
  
   procedure Crear_Lista_Ordenada (Lista : out T_Lista) is
   begin
      Lista := null;
      end crear_lista_ordenada;  
---------------------------------------------------------------------  
  
   procedure Limpiar_lista_ordenada (Lista: in out T_lista) is
      Temp: T_lista:= Lista;
   begin
      while Lista /= null loop
         Temp:= Lista;
         Lista:= Lista.Sig;
         Free (Temp);
      end loop;
   end Limpiar_lista_ordenada;
---------------------------------------------------------------------
   function Vacia_lista_ordenada (Lista: in T_lista) return Boolean is
   begin 
      return Lista = null;
   end Vacia_lista_ordenada;
---------------------------------------------------------------------
   function Esta_lista_ordenada (Lista: T_lista; Elem: TipoElem) return Boolean is
      Ptr: T_lista:= Lista;
   begin 
      if Vacia_Lista_Ordenada (Lista) then 
         return false;
      else 
         while Ptr /= null loop
            if Ptr.Info = Elem then 
               return True;
            end if;
            Ptr:= Ptr.Sig;
         end loop;
      end if;
      return false;
   end Esta_lista_ordenada;
---------------------------------------------------------------------
   procedure Insertar_lista_ordenada (lista: in out T_lista; Elemento: in TipoElem) is
      NuevoNodo: T_lista:=new TipoNodo'(Elemento, null);
      Ptr, Ant: T_lista;
      Lugarencontrado: Boolean;
   begin
      if Vacia_Lista_Ordenada(Lista) then 
         Lista:= NuevoNodo;
      else
         if Elemento < Lista.Info then 
            NuevoNodo.Sig:= Lista;
            Lista:= Nuevonodo; 
         else Ptr:= Lista;
            LugarEncontrado:= false;
         while not LugarEncontrado and Ptr /=null loop
            if Elemento > Ptr.Info then
               ant:= Ptr;
               Ptr:= Ptr.Sig;
               else 
                  LugarEncontrado:= true;
            end if;
         end loop;
         NuevoNodo.Sig:= Ptr;
         ant.Sig:= NuevoNodo;
         end if;
      end if;
   end Insertar_lista_ordenada;
---------------------------------------------------------------------
   function Sig_lista_ordenada (Lista: in T_lista) return T_lista is
   begin
      if Vacia_lista_ordenada(Lista) then 
         raise ListaVacia;
      else 
         return Lista.Sig;
      end if;
   end Sig_lista_ordenada;
---------------------------------------------------------------------
   function Info_lista_ordenada (Lista: in T_lista) return TipoElem is 
   begin
      if Lista /= null then 
         return Lista.Info;
      else 
         raise ListaVacia;
      end if;
   end Info_lista_ordenada;
---------------------------------------------------------------------
   procedure Suprimir_lista_ordenada (Lista: in out T_lista; Elemento: in TipoElem) is
      actual: T_lista:= Lista;
      ant: T_lista:= null;
   begin 
      while actual /=null and then actual.Info < Elemento loop
         ant:= actual;
         actual:= actual.Sig;
      end loop;
      if Ant= null then 
         Lista:= Lista.Sig; 
      else 
         ant.Sig:= actual.Sig;
      end if;
      Free (actual);
   end Suprimir_lista_ordenada;
---------------------------------------------------------------------
end lista_ordenada;
