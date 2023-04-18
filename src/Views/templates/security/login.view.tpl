<section class="contLogin">
  <img src="{{IMGURL}}/vectorLogin.png" alt="No existe la imagen" class="imgLogin">
  <form class="formGrid" method="post"
    action="index.php?page=sec_login{{if redirto}}&redirto={{redirto}}{{endif redirto}}">
    <section class="titulo">
      <h1>Bienvenido!</h1>
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
      {{if generalError}}
      <div class="row">
        {{generalError}}
      </div>
      {{endif generalError}}
      <button class="btnLogin" id="btnLogin" type="submit">Iniciar Sesión</button>
      <div class="singUp">
        ¿No tienes una cuenta? &nbsp;
        <a href="index.php?page=sec_register">Crear Cuenta</a>
      </div>
    </section>
  </form>
</section>