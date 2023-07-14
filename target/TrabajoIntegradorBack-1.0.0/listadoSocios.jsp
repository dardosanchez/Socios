<%-- 
    Document   : listadoSocios
    Created on : 12/07/2023, 21:27:13
    Author     : Dardo
--%>

<%@page import="Persistencia.SociosDAO"%>
<%@page import="Entidad.Socio"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Listado de Socios</title>
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

                    <form action="" class="d-flex">
                        <input type="search" class="form-control me-2" placeholder="Buscar" aria-label="Buscar">
                        <button class="btn btn-outline-light" type="button">Buscar</button>
                    </form>

                </div>
            </div>
        </nav>


        <div class="mt-4 text-center">
            <p class="mb-0">LISTADO DE</p>
            <h3 class="mb-4">SOCIOS</h3>
        </div>


        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="table-responsive">
                        <table class="table table-striped table-hover">
                            
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Nombre</th>
                                    <th>Apellido</th>
                                    <th>DNI</th>
                                    <th>Mail</th>
                                    <th class="text-center" >Fecha de Alta</th>
                                    <th class="text-center">Modificar</th>
                                    <th class="text-center">Eliminar</th>
                                </tr>
                            </thead>
                            <tbody>
                            <% 
                                
                                List<Socio> resultado = null;
                                SociosDAO socioDao = new SociosDAO();
                                resultado = socioDao.listarSocios();
                                
                                for (Socio elem : resultado) {
                                        
                                String rutaM = "SvSocios?accion=modificar&id=" + elem.getId();
                                String rutaE = "SvSocios?accion=eliminar&id=" + elem.getId();
                            %>
                            
                                <tr>
                                    <td><%= elem.getId() %></td>
                                    <td><%= elem.getNombre() %></td>
                                    <td><%= elem.getApellido() %></td>
                                    <td><%= elem.getDni() %></td>
                                    <td><%= elem.getMail() %></td>
                                    <td class="text-center" ><%= elem.getFecha_alta() %></td>
                                    <td class="text-center">
                                        <a href="<%= rutaM %>" class="iconos">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-fill" viewBox="0 0 16 16">
                                            <path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
                                            </svg>
                                        </a>
                                    </td>
                                    <td class="text-center">
                                        <a href="<%= rutaE %>" class="iconos">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3-fill" viewBox="0 0 16 16">
                                            <path d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5Zm-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5ZM4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06Zm6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528ZM8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5Z"/>
                                            </svg>
                                        </a>
                                    </td>
                                </tr>
                            
                            <% 
                             }
                            %>
                           
                                
                                
                                
                            </tbody>
                             <caption>Registros encontrados: <%= resultado.size() %> </caption>
                        </table>
                    </div>
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
