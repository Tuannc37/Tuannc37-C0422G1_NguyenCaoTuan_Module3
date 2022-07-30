<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting product</title>
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
        p {
            text-align: center;
        }
        table {
            margin: 0 auto;
            width: 40%;
            height: 200px;
            border: none;
            font-family: system-ui;
            text-align: center;
            background-color: #ede4e4;
        }
        h3 {
            text-align: center;
        }
    </style>
</head>
<body>
<h1>Delete product</h1>
<p>
    <a href="/product">Back to product list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
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
            <td>
                <button type="submit">Delete</button>
            </td>
            <td><a href="/product">Back to customer list</a></td>
        </tr>
    </table>
</form>
</body>
</html>