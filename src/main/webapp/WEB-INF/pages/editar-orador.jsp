<%-- 
    Document   : editar-orador
    Created on : Jul 10, 2023, 6:13:53 PM
    Author     : Facundo Berges
--%>

<!DOCTYPE html>

<html lang="es">

    <!-- Head -->
    <jsp:include page="../shared/head.jsp">
        <jsp:param name="titulo" value="Editar orador - Integrador Frontend - Codo a Codo" ></jsp:param>
    </jsp:include>

    <body>
        <!-- Header -->
        <jsp:include page="../shared/header.jsp"></jsp:include>

        <!-- Main content -->
        <main class="container-fluid">

            <div class="form text-center my-4" id="ser-orador">
                <h1 class="text-uppercase">
                    Editar Orador: ${orador.nombre} ${orador.apellido}
                </h1>
            </div>
            
            <jsp:include page="../components/edit-form.jsp">
                <jsp:param name="orador" value="${orador}"></jsp:param>
            </jsp:include>
            
        </main>

        <!-- Footer -->
        <jsp:include page="../shared/footer.jsp"></jsp:include>

        <!-- Scripts -->
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
    </body>
</html>
