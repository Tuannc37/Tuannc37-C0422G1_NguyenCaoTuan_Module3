<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--thư viện jstl--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <style>
        a {
            background-color: #cdc2c2;
            border-radius: 3px;
            color: #280d05;
        }
        h1 {
            text-align: center;
            font-family: serif;
            color: royalblue;
        }
        table {
            margin: 0 auto;
            width: 80%;
            border: none;
            font-family: system-ui;
            text-align: center;
            background-color: #ede4e4;
        }
        form {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class = "header">
        <h1> Trang danh sách</h1>
        <div class = search>
            <form action="/product?action=find" method="post">
                <input type="text" name="name" placeholder="Nhập tên sản phẩm cần tìm">
                <button type="submit">Submit</button>
            </form>
        </div>
    </div>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Tên Sản Phẩm</th>
            <th>Giá Sản Phẩm</th>
            <th>Mô Tả Của Sản phẩm</th>
            <th>Nhà Sản Xuất</th>
            <th>Edit</th>
            <th>Delete</th>
            <th>View</th>
            <th>Create</th>
        </tr>
        <c:forEach var="product" items="${productList}" varStatus="status">
            <tr>
                <td>${product.id}</td>
                <td>${product.nameProduct}</td>
                <td>${product.price}</td>
                <td>${product.description}</td>
                <td>${product.producer}</td>
                <td><a href="/product?action=update&id=${product.id}">edit</a></td>
                <td><a href="/product?action=delete&id=${product.id}">delete</a></td>
                <td><a href="/product?action=view&id=${product.id}">view</a></td>
                <td><a href="/product?action=create&id=${product.id}">create</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>