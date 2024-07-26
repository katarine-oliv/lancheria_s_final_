<%--
  Created by IntelliJ IDEA.
  User: Aluno
  Date: 29/07/2022
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Clientes</title>
</head>
<body>
<div class="container">

    <h1>Cadastrar Clientes</h1>

    <form:form method="post" action="/lan/clientes/cadastrarCli" modelAttribute="cliente">
    <form:label path="nome" class="form-group">Nome do cliente:</form:label>
        <form:input path="nome" class="form-control" type="text"/>

    <form:label path="telefone" class="form-group">Telefone:</form:label>
        <form:input path="telefone" class="form-control" type="text"/>

    <br>

    <button type="submit" class="btn btn-primary">Cadastrar</button>

    </form:form>

    <br>

    <h3><a href="/lan/voltar">Voltar</a></h3>

    <br><br>

    <h1>Clientes Cadastrados</h1>

    <table class="table table-striped">
        <thead>
        <tr>
            <th>Nome</th>
            <th>Telefone</th>
            <th>Editar</th>
            <th>Excluir</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="c" items="${clientes}">
            <tr>
                <td>${c.nome}</td>
                <td>${c.telefone}</td>
                <td><a href="/lan/clientes/editarCli?c=${c.id}">Editar</a></td>
                <td><a href="/lan/clientes/excluirCli?c=${c.id}" >Excluir</a></td>
            </tr>

        </c:forEach>
        </tbody>
    </table>

</div>


</body>
</html>
