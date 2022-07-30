
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <style>
        h1 {
            text-align: center;
            font-family: serif;
            color: royalblue;
        }
        table {
            margin: 0 auto;
            width: 80%;
            /*height: 200px;*/
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
    <h1>Search product</h1>
    <p>
        <c:if test='${message != null}'>
            <span class="message">${message}</span>
        </c:if>
    </p>

    <form action="/product?action=find" method="post">
        <input type="text" name="name" placeholder="Nhập tên sản phẩm">
        <button type="submit">Submit</button>
        <button type="button" onclick="location.href='/product';">Home</button>
    </form>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Tên Sản Phẩm</th>
            <th>Giá Sản Phẩm</th>
            <th>Mô Tả Của Sản phẩm</th>
            <th>Nhà Sản Xuất</th>
        </tr>
        <c:forEach var="product" items="${productList}" varStatus="status">
            <tr>
                <td>${product.id}</td>
                <td>${product.nameProduct}</td>
                <td>${product.price}</td>
                <td>${product.description}</td>
                <td>${product.producer}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
