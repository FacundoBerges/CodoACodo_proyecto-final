<!DOCTYPE html>

<html lang="es">

    <!-- Head -->
    <jsp:include page="./WEB-INF/shared/head.jsp">
        <jsp:param name="titulo" value="Integrador Frontend - Codo a Codo" ></jsp:param>
    </jsp:include>

    <body>
        <!-- Header -->
        <jsp:include page="./WEB-INF/shared/header.jsp"></jsp:include>

            <!-- Main content -->
            <main class="container-fluid">

                <!-- hero -->
                <div class="row">
                    <div class="col-12" id="conferencia">
                        <div class="card  text-white hero w-100 h-100 mb-5 mb-sm-0">
                            <img src="${pageContext.request.contextPath}/assets/img/ba1-min.png" class="card-img h-100 hero-img" alt="imagen buenos aires">

                        <div class="card-img-overlay row">
                            <div class="d-none d-md-block col-12 col-md-6"></div>

                            <div class="col-12 col-md-6 d-flex flex-column justify-content-center align-items-end text-end">
                                <h1 class="card-title d-none d-sm-block">Conf Bs As</h1>

                                <p class="card-text">
                                    Bs As llega por primera vez a Argentina. Un evento para compartir
                                    con nuestra comunidad el conocimiento y experiencia de los expertos
                                    que est�n creando el futuro de Internet. Ven a conocer a miembros
                                    del evento, a otros estudiantes de Codo a Codo y los oradores de
                                    primer nivel que tenemos para ti. Te esperamos!
                                </p>

                                <div>
                                    <a href="#ser-orador">
                                        <button type="button" class="btn btn-outline-light">
                                            Quiero ser orador
                                        </button>
                                    </a>

                                    <a href="#tickets">
                                        <button type="button" class="btn btn-success">
                                            Comprar tickets
                                        </button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- oradores -->
            <section class="oradores my-4" id="oradores">
                <p class="text-uppercase text-center">
                    Conoce a los<br /><span class="display-3 fw-medium">oradores</span>
                </p>
                <div class="container">
                    <div
                        class="row justify-content-between align-items-center d-flex flex-column flex-md-row data-masonry='{"percentPosition": true }'">
                        <div class="card col-12 col-md-4 m-1">
                            <img
                                class="card-img-top"
                                src="${pageContext.request.contextPath}/assets/img/steve.jpg"
                                alt="foto de Steve Jobs" />
                            <div class="card-body">
                                <span class="badge text-bg-warning">JavaScript</span>
                                <span class="badge text-bg-info text-light">React</span>
                                <h5 class="card-title">Steve Jobs</h5>
                                <p class="card-text">
                                    Lorem ipsum dolor sit amet consectetur, adipisicing elit.
                                    Amet, esse quae ut perferendis culpa mollitia, tenetur saepe
                                    enim odio eligendi quidem delectus iste architecto, dolore
                                    accusamus vero excepturi. Ratione, velit!
                                </p>
                            </div>
                        </div>
                        <div class="card col-12 col-md-4 m-1">
                            <img
                                class="card-img-top"
                                src="${pageContext.request.contextPath}/assets/img/bill.jpg"
                                alt="foto de Bill Gates" />
                            <div class="card-body">
                                <span class="badge text-bg-warning">JavaScript</span>
                                <span class="badge text-bg-info text-light">React</span>
                                <h5 class="card-title">Bill Gates</h5>
                                <p class="card-text">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                    Voluptas architecto, alias nisi esse optio facilis eum
                                    consequuntur labore perspiciatis, maiores iste libero, sit
                                    magnam quae saepe fugit voluptates possimus quidem.
                                </p>
                            </div>
                        </div>
                        <div class="card col-12 col-md-4 m-1">
                            <img
                                class="card-img-top"
                                src="${pageContext.request.contextPath}/assets/img/ada.jpeg"
                                alt="foto de Ada Lovelace" />
                            <div class="card-body">
                                <span class="badge text-bg-secondary">Negocios</span>
                                <span class="badge text-bg-danger">Startups</span>
                                <h5 class="card-title">Ada Lovelace</h5>
                                <p class="card-text">
                                    Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                                    Tenetur iusto nam officiis recusandae eos tempore ex ut
                                    dolore, molestias odio magni minima voluptatem dolorum id
                                    autem totam nostrum voluptatum mollitia?
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- info -->
            <article class="info container-fluid" id="lugar-fecha">
                <div class="row">
                    <div class="d-none d-lg-inline col-lg-6 info-img p-0 w-50 h-25">
                        <img src="${pageContext.request.contextPath}/assets/img/honolulu.jpg" alt="imagen de playa" />
                    </div>
                    <div class="col-12 col-lg-6 info-text text-light">
                        <h3 class="h2">Bs As - Octubre</h3>
                        <p>
                            Buenos Aires es la provincia y localidad m�s grande del estado de
                            Argentina, en los Estados Unidos. Honolulu es la m�s sure�a de
                            entre las principales ciudades estadounidenses. Aunque el nombre
                            de Honolulu se refiere al �rea urbana en la costa sureste de la
                            isla de Oahu, la ciudad y el condado de Honolulu han formado una
                            ciudad-condado consolidada que cubre toda la ciudad
                            (aproximadamente 600 km<sup>2</sup> de superficie).
                        </p>
                        <a href="./pages/notfound.html">
                            <button type="button" class="btn btn-outline-light">
                                Conoc� m�s
                            </button>
                        </a>
                    </div>
                </div>
            </article>

            <!-- Form orador -->
            <div class="form text-center my-3" id="ser-orador">
                <p class="text-uppercase">
                    Convi�rtete en un 
                    <br />
                    <span class="display-3 fw-medium">orador</span>
                </p>
                <p>
                    An�tate como orador para dar una
                    <abbr title="charla">charla ignite.</abbr> Cu�ntanos de qu� quieres
                    hablar!
                </p>
            </div>

            <jsp:include page="./WEB-INF/components/edit-form.jsp">
                <jsp:param name="orador" value="${null}"></jsp:param>
            </jsp:include>

            <!-- Tickets -->
            <div class="container py-2" id="tickets">
                <hr />
                <div class="row">
                    <div class="col-12 col-md-4 my-3">
                        <div class="card text-center border-primary w-100">
                            <div class="card-body">
                                <h5 class="card-title">Estudiante</h5>
                                <p class="card-text">Tienen un descuento</p>
                                <p class="card-text fw-bold">
                                    <span id="studentDiscount">80</span>%
                                </p>
                                <p class="card-text text-muted">* presentar documentaci�n</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-4 my-3">
                        <div class="card text-center border-success w-100">
                            <div class="card-body">
                                <h5 class="card-title">Trainee</h5>
                                <p class="card-text">Tienen un descuento</p>
                                <p class="card-text fw-bold">
                                    <span id="traineeDiscount">50</span>%
                                </p>
                                <p class="card-text text-muted">* presentar documentaci�n</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-4 my-3">
                        <div class="card text-center border-warning w-100">
                            <div class="card-body">
                                <h5 class="card-title">Junior</h5>
                                <p class="card-text">Tienen un descuento</p>
                                <p class="card-text fw-bold">
                                    <span id="juniorDiscount">15</span>%
                                </p>
                                <p class="card-text text-muted">* presentar documentaci�n</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form text-center">
                        <p class="text-uppercase">Venta</p>
                        <p class="text-uppercase h2 fw-medium">
                            Valor del ticket $<span id="price"></span>
                        </p>

                        <div class="container">
                            <form class="mb-2 row" >
                                <div class="d-flex flex-wrap">
                                    <div class="form-floating mb-3 pe-md-1 col-12 col-md-6">
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="name"
                                            name="name"
                                            placeholder="Nombre"
                                            required />
                                        <label for="name">Nombre</label>
                                    </div>
                                    <div class="form-floating mb-3 ps-md-1 col-12 col-md-6 mx-0">
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="surname"
                                            name="surname"
                                            placeholder="Apellido"
                                            required />
                                        <label for="surname">Apellido</label>
                                    </div>
                                    <div class="form-floating mb-3 ps-md-1 col-12 mx-0">
                                        <input
                                            type="email"
                                            class="form-control"
                                            id="email"
                                            name="email"
                                            placeholder="Correo"
                                            required />
                                        <label for="email">Correo</label>
                                    </div>
                                    <div class="mb-3 pe-md-1 col-12 col-md-6">
                                        <p class="text-start ps-1">
                                            <label for="quantity">Cantidad</label>
                                        </p>
                                        <input
                                            type="number"
                                            class="form-control"
                                            id="quantity"
                                            name="quantity"
                                            min="1"
                                            step="1"
                                            placeholder="Cantidad"
                                            required />
                                    </div>
                                    <div class="mb-3 pe-md-1 col-12 col-md-6">
                                        <p class="text-start ps-1">
                                            <label for="category">Categor��a</label>
                                        </p>
                                        <select class="form-select" name="category" id="category">
                                            <option value="student">Estudiante</option>
                                            <option value="trainee">Trainee</option>
                                            <option value="junior">Junior</option>
                                        </select>
                                    </div>
                                    <div class="alert alert-primary col-12 text-start" role="alert">
                                        Total a pagar: $ <span id="totalPrice"></span>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <button
                                        type="reset"
                                        class="col-5 btn btn-form"
                                        id="resetButton">
                                        Borrar
                                    </button>

                                    <button
                                        type="submit"
                                        class="col-5 btn btn-form"
                                        id="submitButton">
                                        Resumen
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <!-- Footer -->
        <jsp:include page="./WEB-INF/shared/footer.jsp"></jsp:include>

        <!-- Scripts -->
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/masonry-layout@4.2.2/dist/masonry.pkgd.min.js" integrity="sha384-GNFwBvfVxBkLMJpYMOABq3c+d3KnQxudP/mGPkzpZSTYykLBNsZEnG2D9G/X/+7D" crossorigin="anonymous" async></script>
        <script src="./assets/js/tickets.js"></script>
    </body>
</html>
