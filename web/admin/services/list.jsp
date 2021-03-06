<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../header.jsp" %>


<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">

    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Dashboard</h1>
    </div>

    <h5>Servi�os</h5>
    <p><a href="<c:url value="/admin/services/add" />">Adicionar servi�o</a></p>
    <div class="table-responsive">
        <table class="table table-striped table-sm">
            <thead>
                <tr>
                    <th>#</th>
                    <th>T�tulo</th>
                    <th>Imagem</th>
                    <th>Conte�do</th>
                    <th colspan="2">Op��es</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${services}" var="service">
                    <tr>
                        <td> <c:out value="${service.serviceid}" /> </td>
                        <td> <c:out value="${service.title}" /> </td>
                        <td> <img src="<c:out value="/uploads/services/" />${service.image}" alt="Service image-${service.serviceid}" width="60px" height="60px"/> </td>
                        <td> <c:out value="${service.content}" /> </td>
                        <td> <a href="<c:url value="/admin/services/edit?serviceId=" />${service.serviceid}">Atualizar</a> </td>
                        <td> <a href="<c:url value="/admin/services/delete?serviceId=" />${service.serviceid}">Deletar</a> </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</main>

<%@include file="../footer.jsp" %>
