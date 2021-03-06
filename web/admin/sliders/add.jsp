<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../header.jsp" %>

<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">

    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Dashboard</h1>
    </div>

    <h5>Adicionar/Editar slider</h5>
    <br>
    <form class="needs-validation" action="<c:url value="/admin/sliders/add" />" name="addSlider" enctype="multipart/form-data" method="POST">

        <div class="col-md-5 mb-3">
            <label for="image">Imagem</label> <br />
            <input type="file" id="image" name="image">
        </div>
       
        <hr class="mb-4">

        <button class="btn btn-success" type="submit">Enviar</button>
    </form>

</main>

<%@include file="../footer.jsp" %>
