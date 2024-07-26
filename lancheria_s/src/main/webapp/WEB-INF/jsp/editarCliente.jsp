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

    <title>Editar Clientes</title>
</head>
<body>
<div class="container">

    <form:form action="/lan/clientes/editarCli" method="post" modelAttribute="cliente">
    <h1>Editar Cliente</h1>
    <div class="form-group">
        <form:input path="id" type="hidden"/>
        <form:label path="nome">Nome do Cliente:</form:label>
        <form:input path="nome" type="text" value="${cliente.nome}"/>
    </div>

    <div class="form-group">
        <form:label path="telefone">Valor:</form:label>
        <form:input path="telefone" type="text" value="${cliente.telefone}"/>

    </div>

        <button type="submit" class="btn btn-primary" value="Salvar">Salvar</button>
    </form:form>

    <h3><a href="/lan/clientes/cadastrarCli">Voltar</a></h3>

    <c:if test="${not empty erro}">
    <h2>
        <b>${erro}</b>
    </h2>
    </c:if>
</body>
</html>
