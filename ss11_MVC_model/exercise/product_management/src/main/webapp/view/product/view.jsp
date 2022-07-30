<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Product</title>
    <style>
        h1 {
            text-align: center;
            font-family: serif;
            color: royalblue;
        }
        table {
            margin: 0 auto;
            width: 50%;
            height: 200px;
            border: none;
            font-family: system-ui;
            text-align: center;
            background-color: #ede4e4;
        }
    </style>
</head>
<body>
<h1>Product details</h1>
    <table border="1">
        <tr>
            <td>ID</td>
            <td>${product.id}</td>
        </tr>
        <tr>
            <td>Tên Sản Phẩm</td>
            <td>${product.nameProduct}</td>
        </tr>
        <tr>
            <td>Giá Sản Phẩm</td>
            <td>${product.price}</td>
        </tr>
        <tr>
            <td>Mô Tả Của Sản Phẩm</td>
            <td>${product.description}</td>
        </tr>
        <tr>
            <td>Nhà Sản Xuất</td>
            <td>${product.producer}</td>
        </tr>
        <tr>
            <td><a href="/product">Back to Product list</a></td>
        </tr>
    </table>
</body>
</html>