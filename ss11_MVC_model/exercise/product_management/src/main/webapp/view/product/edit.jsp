
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        p {
            text-align: center;
        }
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
        input[type="text"] {
            border-radius: 5px;
            border: #785678;
            height: 24px;
        }
    </style>
</head>
<body>
    <h1>Edit customer</h1>
    <p>
        <c:if test='${message != null}'>
            <span class="message">${message}</span>
        </c:if>
    </p>
    <p>
        <a href="/product">Back to customer list</a>
    </p>
    <form method="post">
        <table border="1">
            <tr>
                <td>ID</td>
                <td><input type="text" name="id" placeholder="nhâp id"></td>
            </tr>
            <tr>
                <td>Tên Sản Phẩm</td>
                <td><input type="text" name="name" placeholder="nhâp tên"></td>
            </tr>
            <tr>
                <td>Giá Sản Phẩm</td>
                <td><input type="text" name="price" placeholder="nhâp giá"></td>
            </tr>
            <tr>
                <td>Mô Tả Của Sản Phẩm</td>
                <td><input type="text" name="description"></td>
            </tr>
            <tr>
                <td>Nhà Sản Xuất</td>
                <td><input type="text" name="producer" placeholder="nhâp nhà sản xuất"></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button type="submit">Update</button>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
