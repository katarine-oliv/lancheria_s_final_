
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Produtos</title>
</head>
<body>
<div class="container">
    <h1>Cadastrar Produtos</h1>
    <form:form method="post" action="/lan/produtos/cadastrarProd" modelAttribute="produto">
         <form:label path="nome" class="form-group">Nome do produto:</form:label>
         <form:input path="nome" class="form-control" type="text"/>

         <form:label path="valor" class="form-group">Valor:</form:label>
         <form:input path="valor" class="form-control" type="number" step="0.01"/>

        <br>

        <button type="submit" class="btn btn-primary">Cadastrar</button>

    </form:form>

        <br><br>

    <h3><a href="/lan/voltar">Voltar</a></h3>

        <br><br>

        <h1>Produtos Disponíveis</h1>

        <table class="table table-striped">
            <thead>
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>Valor</th>
                <th>Editar</th>
                <th>Excluir</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="p" items="${produtos}">
                <tr>
                    <td>${p.id}</td>
                    <td>${p.nome}</td>
                    <td>${p.valor}</td>
                    <td><a href="/lan/produtos/editarProd?n=${p.id}">Editar</a></td>
                    <td><a href="/lan/produtos/excluirProd?n=${p.id}">Excluir</a></td>
                </tr>

            </c:forEach>
            </tbody>
        </table>
</div>

</body>

</html>
