<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--thư viện jstl--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <style>
        a {
            background-color: #cdc2c2;
            border-radius: 7px;
            padding: 8px 20px;
            text-decoration: none;
        }
        p{
            text-align: center;
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
        input[type="text"],.search button {
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class = "header">
        <h1> Trang danh sách</h1>
        <div class = search>
            <form action="/product?action=find" method="post">
                <input type="text" name="name" placeholder="Nhập tên sản phẩm cần tìm">
                <button class="bg-primary text-white" type="submit">Submit</button>
            </form>
            <p><a class="bg-primary text-white" href="/product?action=create&id=${product.id}">Create Product</a></p>
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
        </tr>
        <c:forEach var="product" items="${productList}" varStatus="status">
            <tr>
                <td>${product.id}</td>
                <td>${product.nameProduct}</td>
                <td>${product.price}</td>
                <td>${product.description}</td>
                <td>${product.producer}</td>
                <td><a class="bg-primary text-white" href="/product?action=update&id=${product.id}">Edit</a></td>
                <td>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#delete">
                        Delete
                    </button>
                    <div class="modal fade" id="delete" tabindex="-1" aria-labelledby="exampleModalLabel"
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
                                    <a href="/product?action=delete&id=${product.id}">
                                        <button type="button" class="btn btn-primary">Yes</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
                <td><a class="bg-primary text-white" href="/product?action=view&id=${product.id}">View</a></td>
            </tr>
        </c:forEach>
    </table>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
</body>
</html>