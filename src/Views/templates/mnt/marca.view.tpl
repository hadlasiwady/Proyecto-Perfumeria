<h1>{{modedsc}}</h1>
<section class="row">
  <form action="index.php?page=Mnt_Marca&mode={{mode}}&idmarca={{idmarca}}" method="POST" class="col-6 col-3-offset">
    <section class="row">
      <label for="idmarca" class="col-4">Código</label>
      <input type="hidden" id="idmarca" name="idmarca" value="{{idmarca}}" />
      <input type="hidden" id="mode" name="mode" value="{{mode}}" />
      <input type="hidden" name="xssToken" value="{{xssToken}}" />
      <input type="text" readonly name="idmarcadummy" value="{{idmarca}}" />
    </section>
    <section class="row">
      <label for="marca_nom" class="col-4">Marca</label>
      <input type="text" {{readonly}} name="marca_nom" value="{{marca_nom}}" maxlength="45"
        placeholder="Nombre de Marca" />
      {{if marca_nom_error}}
      <span class="error col-12">{{marca_nom_error}}</span>
      {{endif marca_nom_error}}
    </section>
    <section class="row">
      <label for="marca_descripciont" class="col-4">Descripcion</label>
      <input type="text" {{readonly}} name="marca_descripcion" value="{{marca_descripcion}}" maxlength="45"
        placeholder="Descripcion de Marca" />
      {{if marca_nom_error}}
      <span class="error col-12">{{marca_nom_error}}</span>
      {{endif marca_nom_error}}
      </select>
    </section>
    {{if has_errors}}
    <section>
      <ul>
        {{foreach general_errors}}
        <li>{{this}}</li>
        {{endfor general_errors}}
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
  document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("btnCancelar").addEventListener("click", function (e) {
      e.preventDefault();
      e.stopPropagation();
      window.location.assign("index.php?page=Mnt_marcas");
    });
  });
</script>