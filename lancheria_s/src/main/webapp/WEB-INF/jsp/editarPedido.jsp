<%--
  Created by IntelliJ IDEA.
  User: Aluno
  Date: 01/08/2022
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Editar Pedidos</title>
</head>
<body>
<div class="container">

    <form:form action="/lan/pedidos/editarPed" method="post" modelAttribute="pedido">
    <form:input path="id" type="hidden" />

    <h1>Editar Pedido</h1>
        Insira um Cliente:
        <form:select path="cliente.id">
        <option value="" disabled selectd>Escolha um Cliente</option>
        <c:forEach var="c" items="${clientes}">
        <option value="${c.id}">${c.nome}</option>
        </c:forEach>
        </form:select>

        Insira o Produto:
        <form:select path="produto.id">
        <option value="" disabled selectd>Escolha um Produto</option>
        <c:forEach var="p" items="${produtos}">
        <option value="${p.id}">${p.nome}</option>
        </c:forEach>
        </form:select>
        <form:label path="quantidade">Quantidade: </form:label>
            <form:input path="quantidade" type="text" />


    <button type="submit" class="btn btn-primary" value="Salvar">Salvar</button>
    </form:form>

    <h3><a href="/lan/pedidos/cadastrarPed">Voltar</a></h3>

    <c:if test="${not empty erro}">
    <h2>
        <b>${erro}</b>
    </h2>
    </c:if>
</body>
</html>
