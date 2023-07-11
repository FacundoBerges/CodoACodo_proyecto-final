<%-- Document : not-found Created on : Jul 1, 2023, 10:15:56 PM Author : Facundo
Berges --%>

<!DOCTYPE html>

<html lang="es">

    <!-- Head -->
    <jsp:include page="../shared/head.jsp">
        <jsp:param name="titulo" value="Error - Integrador Frontend - Codo a Codo" ></jsp:param>
    </jsp:include>

    <body>
        <!-- Header -->
        <jsp:include page="../shared/header.jsp"></jsp:include>

        <!-- Main -->
        <main class="container-fluid h-100 w-100">
            <div class="row">
                <div class="col-12 text-center py-2 my-2 py-md-4 my-md-4">
                    <img src="${pageContext.request.contextPath}/assets/img/not-found-img.png" alt="not found image" />
                    <h2 class="h2">Error. Página no encontrada</h2>
                </div>
            </div>
        </main>

        <!-- Footer -->
        <jsp:include page="../shared/footer.jsp"></jsp:include>
    </body>
</html>
