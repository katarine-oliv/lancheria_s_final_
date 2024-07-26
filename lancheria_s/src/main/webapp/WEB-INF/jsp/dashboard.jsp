<%--
  Created by IntelliJ IDEA.
  User: Aluno
  Date: 22/07/2022
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Página Inicial</title>
</head>

<body>

<div class="container">
    <h1>Olá ${usuario_logado.nome}!</h1>

    <ul class="list-group">
        <li class="list-group-item"><a href="/lan/produtos/cadastrarProd">Produtos</a></li>
        <li class="list-group-item"><a href="/lan/clientes/cadastrarCli">Clientes</a></li>
        <li class="list-group-item"><a href="/lan/pedidos/cadastrarPed">Pedidos</a></li>
    </ul>
    <br>
    <a href="/lan/">Sair</a>
</div>

</body>

</html>

