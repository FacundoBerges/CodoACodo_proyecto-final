<%-- 
    Document   : header
    Created on : Jul 1, 2023, 8:31:21 PM
    Author     : Facundo Berges
--%>

<header class="header" id="header">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-dark p-0">
            <!-- logo -->
            <a href="${pageContext.servletContext.contextPath}/inicio" style="display: inline-block">
                <img
                    src="assets/img/codoacodo.png"
                    alt="logo Codo A Codo"
                    class="cac-logo" />
            </a>
            <h3 class="text-light m-0 d-none d-sm-flex">Conf Bs As</h3>

            <!-- navbar toggle button -->
            <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarToggler"
                aria-controls="navbarToggler"
                aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- navbar links -->
            <div
                class="collapse navbar-collapse justify-content-end rounded-bottom-1"
                id="navbarToggler">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0 text-center">
                    <li class="nav-item">
                        <a class="nav-link active" href="${pageContext.servletContext.contextPath}/inicio#conferencia"
                           >La conferencia</a
                        >
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.servletContext.contextPath}/inicio#oradores">Los oradores</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.servletContext.contextPath}/inicio#lugar-fecha">El lugar y la fecha</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.servletContext.contextPath}/inicio#ser-orador">Conviértete en orador</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link tickets" href="${pageContext.servletContext.contextPath}/inicio#tickets">Comprar tickets</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="oradores">Ver todos los oradores</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</header>
