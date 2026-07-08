with Ada.Unchecked_Deallocation; 

package body Lista is 

procedure Free is new Ada.Unchecked_Deallocation(TipoNodo,T_lista);


procedure Crear_Lista (Lista: out T_Lista) is
begin
   Lista := null;
   end crear_lista;
   


procedure Limpiar_lista (Lista: in out T_lista) is
   Temp: T_lista:= Lista;
begin
   while Lista /= null
   loop
   Temp:= Lista;
   Lista:= Lista.Sig;
   Free (Temp);
   end loop;
end Limpiar_lista;


function Vacia_lista (Lista: in T_lista) return Boolean is
begin 
   return Lista = null;
end Vacia_lista;

function Esta_lista (Lista: T_lista; Elem: TipoElem) return Boolean is
   Ptr: T_lista:= Lista;
begin 
   if Vacia_lista (Lista) then return false;
   else while Ptr /= null loop
   if Ptr.Info = Elem then return True;
   end if;
   Ptr:= Ptr.Sig;
   end loop;
   end if;
   return false;
end Esta_lista;



procedure Insertar_lista (lista: in out T_lista; Elemento: in TipoElem) is
   NuevoNodo: T_lista:= new TipoNodo'(Elemento, null);
begin 
   if Vacia_lista (Lista) then Lista:= NuevoNodo;
   else NuevoNodo.Sig := Lista;
   Lista:= NuevoNodo; 
   end if;
end Insertar_lista;



function Sig_lista (Lista: in T_lista) return T_lista is
begin
   if Vacia_lista(Lista) then 
      raise ListaVacia;
   else 
      return Lista.Sig;
   end if;
end Sig_lista;



function Info_lista (Lista: in T_lista) return TipoElem is 
begin
   if Lista /= null then 
      return Lista.Info;
   else 
      raise ListaVacia;
   end if;
end Info_lista;



procedure Suprimir_lista (Lista: in out T_lista; Elemento: in TipoElem) is
   actual: T_lista:= Lista;
   ant: T_lista:= null;
begin
   if Vacia_lista(Lista) then raise ListaVacia;
   else while actual /= null and then actual.Info /= Elemento loop
   ant:= actual;
   actual:= actual.Sig;
   end loop;
      if Ant = null then 
         Lista:= Lista.Sig; 
      else 
         ant.Sig:= actual.Sig;
      end if; 
   Free (actual);
   end if;
end Suprimir_lista;

end lista;
