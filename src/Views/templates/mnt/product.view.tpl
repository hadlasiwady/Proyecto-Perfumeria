<h>{{modedsc}}</h>
<section>
  <form action="index.php?page=mnt_product&mode={{mode}}&idproducto={{idproducto}}" method="POST">
    <section>
        <label for="idproducto">Codigo</label>
        <input type"hidden" id="idproducto" value="{{idproducto}}"/>
        <input type="text" readonly name="clientiddummy" value="{{idproducto}}"/>
    </section>
    <section>
        <label for="nom_prod">Producto</label>
        <input type="text" {{readonly}} name="nom_prod" value="{{nom_prod}}" maxlength="50">
        {{if "nom_prod_error"}}
            <span class="error">{{"nom_prod_error"}}</span>
        {{endif "nom_prod_error"}}
    </section>
    <section>
        <label for="ndesc_prod">Descripcion</label>
        <input type="text" {{readonly}} name="desc_prod" value="{{desc_prod}}" maxlength="255">
    </section>
    <section>
        <label for="precio">Precio</label>
        <input type="text" {{readonly}} name="precio" value="{{precio}}">
        {{if "precio_error"}}
            <span class="error">{{"precio_error"}}</span>
        {{endif "precio_error"}}
    </section>
    <section>
       <label for="idmarca">Marca</label>
       <select id="idmarca" name="idmarca" {{if readonly}}disabled{{endif readonly}}>
          {{foreach marcas}}
             <option value="{{idmarca}}">{{marca_nom}}</option>
          {{endfor marcas}}
       </select>
    </section>
    <section>
        <label for="fecha_vencimiento">Fecha Vencimiento</label>
        <input type="datetime-local" id="fecha_vencimiento" value={{fecha_vencimiento}}>
    </section>
    <section>
        <label for="img">Imagen</label>
        <div id="img">
            <input type="file" type="file" id="img" name="img">
        </div>
    </section>
    {{if has_errors}}
        <section>
            <ul>
                {{foreach general_error}}
                    <li>{{this}}</li>
                {{endfor general_error}}
            </ul>
        </section>
    {{endif has_errors}}
    <section>
        {{if show_action}}
            <button type="submit" name="btnGuardar" value="G">Guardar</button>
        {{endif show_action}}
        <button type="button" id="btnCancelar">Cancelar</button>
    </section>
  </form>
</section>

<script>
  document.addEventListener("DOMContentLoaded", function(){
      document.getElementById("btnCancelar").addEventListener("click", function(e){
        e.preventDefault();
        e.stopPropagation();
        window.location.assign("index.php?page=mnt_product");
      });
  });
</script>