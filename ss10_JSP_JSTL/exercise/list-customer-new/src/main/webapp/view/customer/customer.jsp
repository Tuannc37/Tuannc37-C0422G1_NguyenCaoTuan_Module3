<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 7/28/2022
  Time: 10:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--thư viện jstl--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <style>
        h1 {
            text-align: center;
        }
        table {
            border: blanchedalmond;
            width: 1000px;
            height: 400px;
            margin: 0 auto;
            background-color: #ebe6e0;
        }
        td {
            text-align: center;
        }
        img {
            height: 50px;
            width: 50px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<h1> Trang danh sách</h1>
<table border="1">
    <tr>
        <th>Tên</th>
        <th>Ngày Sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach var="customer" items="${customerList}" varStatus="status">
        <tr>
            <td>${customer.getName()}</td>
            <td>${customer.getBirthday()}</td>
            <td>${customer.getAddress()}</td>
            <td><img src="${customer.getImages()}" alt="" ></td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
