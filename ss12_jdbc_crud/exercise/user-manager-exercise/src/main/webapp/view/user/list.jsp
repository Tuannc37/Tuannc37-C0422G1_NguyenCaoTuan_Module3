<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <style>
        table {
            width: 80%;
            border: snow;
            text-align: center;
            background-color: #b7dfef;
        }
        input[type="text"], .header-panel button  {
            border-radius: 5px;
        }
    </style>
</head>
<body>
<center>
    <h1>User Management</h1>
    <div class = header-panel>
        <form action="/users?action=find" method="post">
            <input type="text" name="country" placeholder="Nhập tên quốc gia cần tìm">
            <button name="action"  type="submit">Submit</button>
        </form>
        <p><a href="/users?action=create&id=${user.id}">Add New User</a></p>
        <p><a href="/users?action=sort&id=${user.id}">Sort ByName</a></p>
    </div>
</center>
<div align="center">
    <table border="1" cellpadding="5">
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
                <td>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal-${user.id}">
                        Delete
                    </button>
                    <div class="modal fade" id="exampleModal-${user.id}" tabindex="-1" aria-labelledby="exampleModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Delete product</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Are you sure that you want to delete this product ?
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <a href="/users?action=delete&id=${user.id}">
                                        <button type="button" class="btn btn-primary">Yes</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
</body>
</html>