generic 
   type Tipoelem is private;
   with function "<" (X, Y: TipoElem) return Boolean;
   with function ">" (X, Y: Tipoelem) return Boolean;
 --  with function "=" (X, Y: Tipoelem) return Boolean;   
   package Lista_ordenada is
      type T_lista is private;
      procedure crear_lista_ordenada (lista: out t_lista);
      function Vacia_lista_ordenada (Lista: T_lista) return Boolean;
      function Esta_lista_ordenada (Lista: T_lista; Elem: TipoElem) return Boolean;
      procedure Insertar_lista_ordenada (Lista: in out T_lista; Elemento: in Tipoelem);
      procedure Suprimir_lista_ordenada (Lista: in out T_lista; Elemento: in TipoElem);
      procedure Limpiar_lista_ordenada (Lista: in out T_lista); 
      function Info_lista_ordenada (Lista: in T_lista) return TipoElem;
      function Sig_lista_ordenada (Lista: in T_lista) return T_lista;
      ListaVacia: Exception;
   
      private
         type TipoNodo;
         type T_lista is access Tiponodo;
         type TipoNodo is record
            Info: Tipoelem;
            Sig: T_lista;
         end record;
   end Lista_ordenada;
