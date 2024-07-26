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
    <title>Pedidos</title>
</head>
<body>
<div class="container">

    <h1>Cadastrar Pedidos</h1>

    <form:form method="post" action="/lan/pedidos/cadastrarPed" modelAttribute="pedido">

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


        <button type="submit" class="btn btn-primary">Cadastrar</button>

    </form:form>

    <br>

    <h3><a href="/lan/voltar">Voltar</a></h3>

    <br><br>

    <h1>Clientes Cadastrados</h1>

    <table class="table table-striped">
        <thead>
        <tr>
            <th>Cliente</th>
            <th>Produto</th>
            <th>Quantidade</th>
            <th>Editar</th>
            <th>Excluir</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="pe" items="${pedidos}">
            <tr>
                <td>${pe.cliente.nome}</td>
                <td>${pe.produto.nome}</td>
                <td>${pe.quantidade}</td>
                <td><a href="/lan/pedidos/editarPed?id=${pe.id}" >Editar</a></td>
                <td><a href="/lan/pedidos/excluirPed?id=${pe.id}" >Excluir</a></td>
            </tr>

        </c:forEach>
        </tbody>
    </table>

</div>


</body>
</html>
