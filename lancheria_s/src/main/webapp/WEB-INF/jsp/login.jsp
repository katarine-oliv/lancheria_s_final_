<%--
  Created by IntelliJ IDEA.
  User: Aluno
  Date: 22/07/2022
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Login</title>
</head>
<body>
<div class="container">
    <h1>Login</h1>
    <form:form method="post" action="./" modelAttribute="usuario">

    <form:label path="email" class="form-group">Email:</form:label>
    <form:input path="email" class="form-control" type="email"/>


    <form:label path="senha" class="form-group">Senha:</form:label>
    <form:input path="senha" class="form-control" type="text"/>
<br>
    <input type="submit" class="btn btn-primary" value="Entrar">
</form:form>
</div>

<!--<c:if test="${not empty erro}">
    <h2>
        <b>${erro}</b>
    </h2>
</c:if>-->


</body>
</html>
