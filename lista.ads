generic 
 type Tipoelem is private;
 --with function "=" (x,y:tipoelem) return boolean; 
   package Lista is
      type T_lista is private;
      procedure crear_lista (lista: out t_lista);
      function Vacia_lista (Lista: T_lista) return Boolean;
      function Esta_lista (Lista: T_lista; Elem: TipoElem) return Boolean;
      procedure Insertar_lista (Lista: in out T_lista; Elemento: in Tipoelem);
      procedure Suprimir_lista (Lista: in out T_lista; Elemento: in TipoElem);
      procedure Limpiar_lista (Lista: in out T_lista); 
      function Info_lista (Lista: in T_lista) return TipoElem;
      function Sig_lista (Lista: in T_lista) return T_lista;
      ListaVacia: Exception; 
      private
         type TipoNodo;
         type T_lista is access Tiponodo;
         type TipoNodo is record
            Info: Tipoelem;
            Sig: T_lista;
         end record;
   end Lista;