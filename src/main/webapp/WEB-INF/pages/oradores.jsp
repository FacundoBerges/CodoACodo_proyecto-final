<%-- 
    Document   : oradores
    Created on : Jul 1, 2023, 6:17:15 PM
    Author     : Facundo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <!-- Css reset -->
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/assets/styles/reset.css" />

        <!-- Bootstrap -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
            crossorigin="anonymous" />

        <!-- Css propio -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/styles/style.css" />
        
        <!-- Bootstrap icons -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

        <title>Lista de oradores - Trabajo integrador Codo a Codo</title>
    </head>
    <body>
        <%@include file="/WEB-INF/shared/header.jsp" %>

        <main class="container">
            <div class="row">
                <h1 class="text-center my-2">Lista de oradores</h1>

                <table class="table table-hover">
                    <thead>
                        <tr class="text-center">
                            <th colspan="2">Nombre</th>
                            <th colspan="2">Apellido</th>
                            <th colspan="2">Fecha de alta (año-mes-dia)</th>
                            <th colspan="2"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listaOradores}" var="orador">
                            <tr class="text-center">
                                <td colspan="2">${orador.nombre}</td>
                                <td colspan="2">${orador.apellido}</td>
                                <td colspan="2">${orador.fechaDeAlta}</td>
                                <td>
                                    <button class="btn btn-primary">
                                        <i class="bi bi-pencil-fill"></i>
                                    </button>
                                </td>
                                <td>
                                    <button class="btn btn-danger">
                                        <i class="bi bi-x"></i>
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </main>


        <%@include file="/WEB-INF/shared/footer.jsp" %>
    </body>
</html>
