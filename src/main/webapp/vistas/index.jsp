<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Inicio</title>
    <link rel="icon" href="/img/codoacodo.ico" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet" />
</head>

<body style="padding-top: 90px;">


    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-color: rgb(53, 58, 64)">
        <div class="container"> 
                <a class="navbar-brand text-light" href="https://agenciadeaprendizaje.bue.edu.ar/codo-a-codo/">
                  <img id="titulo" src="img/codoacodo.png" alt="CodoACodo" width="105" height="60" class="d-inline-block align-text"/>
                </a>

            <!-- BOTON PARA EL MENU-->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menu"
                aria-controls="menu" aria-expanded="false" aria-label="Mostrar / Ocultar Menu">
                <span class="navbar-toggler-icon"></span>
            </button>


            <!-- MENU DE NAVEGACION-->
            <div class="collapse navbar-collapse" id="menu">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a href="/TrabajoIntegradorBack/vistas/index.jsp" class="nav-link">Inicio</a></li>
                    <li class="nav-item"><a href="/TrabajoIntegradorBack/vistas/nuevoSocio.jsp" class="nav-link">Nuevo Socio</a></li>
                    <li class="nav-item"><a href="/TrabajoIntegradorBack/vistas/listadoSocios.jsp" class="nav-link">Ver Socios</a></li>
                </ul>

                

            </div>
        </div>
    </nav>
    
    

        <p class="text-center  align-items-center mt-5" style="font-family: Open Sans, sans-serif;">TRABAJO PRACTICO</p>
        <h1 class="text-center " style="font-family: Open Sans, sans-serif;">INTEGRADOR</h1>
 

    


    <footer class="py-4 mt-4 fixed-bottom" style="background-color: rgb(53, 58, 64)">
        <div class="container text-light text-center">
           
            <small class="text-white-50">&copy; Copyright by Dardo Sanchez</small>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>

</html>