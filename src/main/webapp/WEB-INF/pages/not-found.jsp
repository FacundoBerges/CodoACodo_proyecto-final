<%-- Document : not-found Created on : Jul 1, 2023, 10:15:56 PM Author : Facundo
Berges --%>

<!DOCTYPE html>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    <title>Error - Integrador Frontend - Codo a Codo</title>

    <!-- Css reset -->
    <link rel="stylesheet" href="/assets/styles/reset.css" />

    <!-- Bootstrap -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
      crossorigin="anonymous" />

    <!-- Css propio -->
    <link rel="stylesheet" href="/assets/styles/style.css" />
  </head>
  <body>
    <!-- Header -->
    <%@include file="/WEB-INF/shared/header.jsp" %>

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
    <%@include file="/WEB-INF/shared/footer.jsp" %>
  </body>
</html>
