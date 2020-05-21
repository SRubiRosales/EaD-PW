<%-- 
    Document   : login
    Created on : 3/05/2020, 01:42:20 PM
    Author     : Fabián :)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Define el título para el documento-->
        <title>Educación a Distancia | ITTG</title>

        <!-- Hojas de estilo-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <header><!--Encabezado-->
            <div id="logos-gob"><!--Logos institucionales-->
                <a href="https://www.gob.mx/" target="_blank">
                    <img src="imgs/gobmx.png" alt="logo-gob-mx" id="logo-gob">
                </a>
                <a href="https://www.gob.mx/sep" target="_blank">
                    <img src="imgs/sep.png" alt="logo-educacion" id="logo-edu-sep">
                </a>
                <a href="https://www.tecnm.mx/inicio.aspx" target="_blank">
                    <img src="imgs/tecnm.jpg" alt="logo-tecnm" id="logo-edu-tecnm">
                </a>
                <a href="https://www.tuxtla.tecnm.mx/" target="_blank">
                    <img src="imgs/ittg.png" alt="logo-ittg" id="logo-edu-ittg">
                </a>
            </div><!--Logos institucionales-->
        </header>
        <!--Barra de navegación-->
        <!--<input type="checkbox" id="boton-menu">
        <label for="boton-menu"><img src="imgs/menu.png" alt="Menú"></label>-->
        <nav class="nav-menu">
            <ul class="menu">
                <li><a href="index.html">Inicio</a></li>
                <li><a href="#">Oferta Educativa</a>
                    <ul>
                        <li><a href="ofertaEducativa.html">Sedes Remotas</a></li>
                        <li><a href="convocatoria.html">Convocatoria</a></li>
                    </ul>
                </li>
                <li><a href="#">Contacto</a>
                    <ul>
                        <li><a href="directorio.html">Directorio</a></li>
                        <li><a href="contacto.html">Correo Institucional</a></li>
                    </ul>
                </li>
                <li><a href="login.html">Iniciar Sesión</a></li>
            </ul>
        </nav><!--Fin de barra de navegación-->
        <div class="page">
        <aside><!-- Aside, contenido no directamente relacionado con el contenido principal de la página -->
            <!--Inline frame, incrusta video de YouTube en la página-->
            <iframe width="100%" src="https://www.youtube.com/embed/1fysHX-IgHo" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <!-- Vídeo cargado desde nuestra carpeta de recursos, con controles de vídeo-->
            <video width="100%" controls>
                <source src="media/video.mp4" type="video/mp4"> <!-- Carga del vídeo, y definición de tipo, con mensaje en caso de error-->
                <p>Lo sentimos, su navegador no soporta este video</p>
            </video>
            <br>
            <i>Conoce los síntomas que provoca el Coronavirus y cómo prevenir el contagio</i><!--Texto en cursiva-->
            <audio src="media/Coronavirus-sintomas-y-prevencion.mp3" preload="auto" width="100%" controls></audio><!--Audio-->
            <div> <!--Etiqueta con título para nuestro objeto-->
                    <h2>Encuentranos en:</h2>
                    <!-- Inicio de objeto de tipo html, que ejecuta una vista de google maps con la dirección del Tecnm campus Tgz -->
                    <object
                        type="text/html"
                        data="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15281.603803455482!2d-93.172576!3d16.756716!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4e771d3242c2f25a!2sTecnol%C3%B3gico%20Nacional%20de%20M%C3%A9xico%20Campus%20Tuxtla%20Guti%C3%A9rrez!5e0!3m2!1ses-419!2smx!4v1584724817186!5m2!1ses-419!2smx"
                        style="width: 100%;">
                        ERROR (no puede mostrarse el objeto)
                    </object>
                </div><!-- Fin de la sección del objeto -->
        </aside><!-- Fin de aside-->
        <section class="contenedor">
            <h1>Bienvenido</h1>
        <div class="container contenedor-login"><!--Contenedor para formularios de inicio de sesión y registro-->
            <div class="row">
                <div class="col-md-6 login-form">
                    <form action="iniciar" method="post"><!--Sección de formulario-->
                        <div class="form-group"><!--Sección del formulario para campo de texto-->
                            <input type="text" class="form-control" placeholder="Nombre de usuario" name="matricula"/>
                        </div>
                        <div class="form-group"><!--Sección del formulario para campo de contraseña-->
                            <input type="password" class="form-control" placeholder="Contraseña" name="password"/>
                        </div>
                        <div class="form-group"><!--Sección del formulario con botón-->
                            <button class="boton boton-login" type="submit">Iniciar Sesión</button>
                            <!--<input type="submit" class="boton" value="Login"/>-->
                        </div>
                        <div class="form-group"><!--Sección del formulario enlace para recuperar contraseña-->
                            <a href="#" class="ForgetPwd">¿Olvidaste tu contraseña?</a>
                        </div>
                    </form>
                </div>
                <div class="col-md-6 register-form"><!--Contenedor para formulario de registro-->
                    <h3>Regístrate</h3>
                    <form action="registro" method="post">
                    <div class="form-group">
                            <input type="text" class="form-control" placeholder="Número de control" name="matricula" required/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Nombre" name="nombre" required/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Apellido" name="apellido" required/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Email" name="email" required/>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Contraseña" name="password" required/>
                        </div>
                        <!--<div class="form-group">
                            <input type="password" class="form-control" placeholder="Verifique la Contraseña" name="VerifyPassword"/>
                        </div>-->
                        <div class="form-group">
                            <button class="boton boton-registro" type="submit">Registrarse</button>
                            <!--<input type="submit" class="boton" value="Regristrarse" />-->
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
        </section>
            <div class="site-info"><!--Información de contacto-->
                <hr/><!--Separador-->
                <p>contacto.distancia@ittg.edu.mx<br/><!--Párrafo con saltos de línea-->
					Carretera Panamericana Km. 1080, C.P. 29050, Apartado Postal: 599,<br/>
                    Tels. (961)61 5 03 80 y (961)61 5 04 61 Ext. 323<br/>
                    Línea directa (961) 61 5 62 52
				</p>
            </div><!-- .site-info -->
        </div>
        <footer class="site-footer" role="contentinfo"><!--Footer-->
            <div class="page" id="fondo-footer">
                <section id="contenedorFooterL"><!--Sección izquierda del footer-->
                    <img src="imgs/gobmx_logo.png" width="200px;"><!--Imagen del gobierno de MX-->
                </section>
                <section id="contenedorFooterC"><!--Sección central del footer-->
                    <h4>Instituto Tecnológico de Tuxtla Gutiérrez</h4>
                    <h5>Martínez Rodas José Fabián<br>Rosales Sánchez Sharon Rubí</h5></section>
                <section id="contenedorFooterR"><!--Sección derecha del footer-->
                    <h4>Síguenos en</h4>
                    <!--Enlaces a redes sociales-->
                    <a href="https://www.facebook.com/edittg.web" target="_blank">
                        <img class="icono-footer" src="imgs/facebook.png">
                    </a>
                    <a href="https://twitter.com/tecnmtuxtlagtz" target="_blank">
                        <img class="icono-footer" src="imgs/twitter.png">
                    </a>
                </section>
                <hr>
            </div>
        </footer>
        <!--<script>
            var holi = document.getElementById("Contraseña");
        function clickMe(){
            alert(holi.value);
        }
    </script>-->
    </body>
</html>
