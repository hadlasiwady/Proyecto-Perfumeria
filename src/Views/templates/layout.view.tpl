<html>

  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>{{SITE_TITLE}}</title>
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href={{FONT_FAMILY}} rel="stylesheet" />
    <link rel="stylesheet" href={{BASE_DIR}} />

    <script src={{FONT_AWESOME_KIT}} crossorigin="anonymous"></script>
  </head>

  <body>
    <header class="BarraLateral close">
      <i class="fa-solid fa-arrow-left iconClose"></i>
      <div class="logo">
        <h1 class="show">{{SITE_TITLE}}</h1>
        <h1 class="hidden">SPO</h1>
      </div>
      <nav id="menu">
        <ul>
          <li><a href="index.php?page=index"><i
                class="fa-solid fa-house"
              ></i>Inicio</a></li>
          <li><a href="index.php?page=sec_login"><i
                class="fas fa-sign-in-alt"
              ></i>
              Iniciar Sesión</a></li>
          <li><a href="index.php?page=Mnt-Clientes"><i
                class="fas fa-users"
              ></i>Clientes</a></li>
          <li><a href="index.php?page=sec_register"><i
                class="fas fa-user-plus"
              ></i>Crear Cuenta</a></li>
        </ul>

        <div class="logout">
          <nav>
            <ul>
              <li><a href="">Logout</a></li>
            </ul>
          </nav>
        </div>
      </nav>
    </header>
    <main class="contPrincipal">
      {{{page_content}}}
    </main>

    {{foreach EndScripts}}

    {{endfor EndScripts}}

    <script>
      const body = document.querySelector('body'), sidebar =
      document.querySelector('.BarraLateral'), toggle =
      document.querySelector('.iconClose'); toggle.addEventListener('click', ()
      => { sidebar.classList.toggle('close'); });
    </script>
  </body>
</html>