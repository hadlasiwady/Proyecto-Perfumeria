<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>{{SITE_TITLE}}</title>
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="http://localhost/Proyecto-Perfumeria/public/css/style.css"
    />
    <script
      src="https://kit.fontawesome.com/{{FONT_AWESOME_KIT}}.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <header class="BarraLateral close">
      <div class="iconClose">
        <i class="fa-solid fa-arrow-left"></i>
      </div>
      <h1>{{SITE_TITLE}}</h1>
      <nav id="menu">
        <ul>
          <li><a href="index.php?page=index"><i
                class="fas fa-home"
              ></i>Inicio</a></li>
          <li><a href="index.php?page=sec_login"><i
                class="fas fa-sign-in-alt"
              ></i>Iniciar Sesión</a></li>
          <li><a href="index.php?page=Mnt-Clientes"><i
                class="fas fa-users"
              ></i>Clientes</a></li>
          <li><a href="index.php?page=sec_register"><i
                class="fas fa-user-plus"
              ></i>Crear Cuenta</a></li>
        </ul>
      </nav>
    </header>
    <main class="contPrincipal">
      {{{page_content}}}
    </main>
    <footer>
      <div>Todo los Derechos Reservados 2023 &copy;</div>
    </footer>
    {{foreach EndScripts}}
    <script src="/{{~BASE_DIR}}/{{this}}"></script>
    {{endfor EndScripts}}
  </body>
</html>