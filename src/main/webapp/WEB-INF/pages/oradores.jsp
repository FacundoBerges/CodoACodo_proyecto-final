<%-- 
    Document   : oradores
    Created on : Jul 1, 2023, 6:17:15 PM
    Author     : Facundo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html lang="es">

    <!-- Head -->
    <jsp:include page="../shared/head.jsp">
        <jsp:param name="titulo" value="Lista de oradores - Trabajo integrador Codo a Codo" ></jsp:param>
    </jsp:include>

    <body>
        <!-- Header -->
        <jsp:include page="../shared/header.jsp"></jsp:include>

        <main class="container">
            <div class="row">
                <c:choose>
                    <c:when test="${cantidadOradores > 0}">
                        <h1 class="text-center my-2 p-3">Lista de oradores</h1>

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
                                            <a href="${pageContext.request.contextPath}/oradores?action=edit&id=${orador.id}" >
                                                <button type="button" class="btn btn-primary">
                                                    <i class="bi bi-pencil-fill"></i>
                                                </button>
                                            </a>
                                        </td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/oradores?action=delete&id=${orador.id}" >
                                                <button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#deleteModal">
                                                    <i class="bi bi-trash3-fill"></i>
                                                </button>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </c:when>

                    <c:otherwise>
                        <h1 class="text-center my-4 p-2">Oops... Parece que no hay oradores registrados.</h1>
                    </c:otherwise>
                </c:choose>
            </div>
        </main>

        <!-- Footer -->
        <jsp:include page="../shared/footer.jsp"></jsp:include>
    </body>
</html>
