<%-- 
    Document   : edit-modal
    Created on : Jul 10, 2023, 1:12:52 PM
    Author     : Facundo Berges
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="row">
        <form class="mb-2" method="POST" action="oradores<c:if test="${orador != null}">?action=update&id=${orador.id}</c:if>">
            <div class="d-flex flex-wrap">
                <div class="form-floating mb-3 pe-md-1 col-12 col-md-6">
                    <input
                        type="text"
                        class="form-control"
                        id="name"
                        name="name"
                        placeholder="Nombre"
                        value ="${orador == null ? '' : orador.nombre}"
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
                        value ="${orador == null ? '' : orador.apellido}"
                        required />
                    <label for="surname">Apellido</label>
                </div>
            </div>
            
            <div class="form-floating col-12">
                <textarea
                    class="form-control"
                    placeholder="Sobre que quieres hablar?"
                    id="floatingTextarea2"
                    style="height: 100px"
                    name="topic"
                    required>${orador == null ? "" : orador.descripcion}</textarea>
                <label for="floatingTextarea2">Sobre qué quieres hablar?</label>
                <p class="text-muted text-start">
                    Recuerda incluir un tí­tulo para tu charla
                </p>
            </div>
            
            <button type="submit" class="col-12 btn btn-form">${orador == null ? "Enviar" : "Actualizar"}</button>
        </form>
    </div>
</div>
