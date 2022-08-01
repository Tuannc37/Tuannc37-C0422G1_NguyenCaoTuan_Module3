<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <style>
        table {
            width: 80%;
            border: snow;
            text-align: center;
            background-color: #b7dfef;
        }
    </style>
</head>
<body>
<center>
    <h1>User Management</h1>
    <div class = header-panel>
        <form action="/users?action=find" method="post">
            <input type="text" name="name" placeholder="Nhập tên quốc gia cần tìm">
            <button class="bg-primary text-white" type="submit">Submit</button>
        </form>
        <p><a class="bg-primary text-white" href="/users?action=create&id=${user.id}">Add New User</a></p>
        <p><a class="bg-primary text-white" href="/users?action=sort&id=${user.id}">Sort ByName</a></p>
    </div>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td> <a href="/users?action=edit&id=${user.id}">Edit</a></td>
                <td><a href="/users?action=delete&id=${user.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>