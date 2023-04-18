<section class="contLogin">
  <img src="{{IMGURL}}/vectorLogin.png" alt="No existe la imagen" class="imgLogin">
  <form class="formGrid" method="post" action="index.php?page=sec_register">
    <section class="titulo">
      <h1>Crea tu cuenta!</h1>
    </section>
    <section class="contPrimaryLogin">
      <div class="contInputLogin">
        <label class="textCustom" for="txtEmail">Correo Electrónico</label>
        <input class="inputCustom" type="email" id="txtEmail" name="txtEmail" value="{{txtEmail}}" />
        {{if errorEmail}}
        <div class="error col-12 py-2 col-m-8 offset-m-4">{{errorEmail}}</div>
        {{endif errorEmail}}
      </div>
      <div class="contInputLogin">
        <label class="textCustom" for="txtPswd">Contraseña</label>
        <input class="inputCustom" type="password" id="txtPswd" name="txtPswd" value="{{txtPswd}}" />
        {{if errorPswd}}
        <div class="error col-12 py-2 col-m-8 offset-m-4">{{errorPswd}}</div>
        {{endif errorPswd}}
      </div>
      <button class="btnLogin" id="btnLogin" type="submit">Crear Cuenta</button>
      <div class="singUp">
        ¿Ya tienes una cuenta? &nbsp;
        <a href="index.php?page=sec_register">Iniciar Sesión</a>
      </div>
    </section>
  </form>
</section>