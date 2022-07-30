<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 29/07/2022
  Time: 3:10 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Trang thêm mới</h1>
    <a href="/product">Quay lại trang list</a>
    <c:if test="${mess!=null}">
        <p>${mess}</p>
    </c:if>

    <form action="/product?action=create" method="post">
        <table>
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
                    <button type="submit">Lưu</button>
                </td>
            </tr>
        </table>
    </form>

</body>
</html>
