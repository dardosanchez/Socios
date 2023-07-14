<%-- 
    Document   : modificarSocio
    Created on : 12/07/2023, 21:26:41
    Author     : Dardo
--%>

<%@page import="Persistencia.SociosDAO"%>
<%@page import="Entidad.Socio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Modificar Socio</title>
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
                    <li class="nav-item"><a href="/TrabajoIntegradorBack/index.jsp" class="nav-link">Inicio</a></li>
                    <li class="nav-item"><a href="/TrabajoIntegradorBack/nuevoSocio.jsp" class="nav-link">Nuevo Socio</a></li>
                    <li class="nav-item"><a href="/TrabajoIntegradorBack/listadoSocios.jsp" class="nav-link">Ver Socios</a></li>
                </ul>

                

            </div>
        </div>
    </nav>


    <div class="mt-4 text-center">
        <p class="mb-0">MODIFICAR</p>
        <h3 class="mb-4">SOCIO </h3>
      </div>

    <div class="container">
        <div class="row mt-3 justify-content-center">
            <div class="col-4">
                
                <% 
                    String id = request.getParameter("id");
                    int _id;
                    _id = Integer.parseInt(id); 
                    Socio resulSocio = null;
                    SociosDAO socioDao = new SociosDAO();
                    resulSocio = socioDao.mostrarSocio(_id);
                    
                    
                %>
                
                <form action="SvSocios?accion=actualizar" method="post" class="">
                    <div class="row">
                        <div class="mb-3">
                            <input type="hidden" class="form-control" id="id" name="id" value="<%= resulSocio.getId() %>" >
                        </div>
                        <div class="mb-3">
                            <label for="nombre" class="form-label">Nombre</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" value="<%= resulSocio.getNombre() %>" required>
                        </div>
                        <div class="mb-3">
                            <label for="apellido" class="form-label">Apellido</label>
                            <input type="text" class="form-control" id="apellido" name="apellido" value="<%= resulSocio.getApellido() %>" required>
                        </div>
                        <div class="mb-3">
                            <label for="dni" class="form-label">DNI</label>
                            <input type="number" class="form-control" id="dni" name="dni" value="<%= resulSocio.getDni() %>" required>
                        </div>
                        <div class="mb-3">
                            <label for="mail" class="form-label">Mail</label>
                            <input type="text" class="form-control" id="mail" name="mail" value="<%= resulSocio.getMail() %>" required>
                        </div>
                    </div>

                    <button type="submit" class="col-12 btn btn-primary mt-3" id="btnAgregar">Modificar</button>

                </form>
            </div>
        </div>
    </div>


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
