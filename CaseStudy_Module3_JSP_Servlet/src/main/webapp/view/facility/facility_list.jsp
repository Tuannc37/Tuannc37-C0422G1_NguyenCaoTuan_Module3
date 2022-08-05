<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer Management Application</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container-fluid menu">
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="collapse navbar-collapse row w-100">
                    <div class="col-md-2">
                        <img src="../../image/Logo-FURAMA-RESORT.jpg" alt="" height="100px">
                    </div>
                    <div class="col-md-7">
                        <ul class="navbar-nav mr-auto w-100" id="navbarSupportedContent">
                            <li class="nav-item active">
                                <a class="nav-link" href="/index.jsp">Home<span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="/index.jsp">Employee<span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="/index.jsp">Customer</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="/facility">Service<span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="#">Contract<span class="sr-only">(current)</span></a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <form class="form-inline my-2 my-lg-0 row">
                            <div class = "col-md-7"><input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"></div>
                            <div class = "col-md-5"><button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button></div>
                        </form>
                    </div>
                </div>
            </nav>
        </header>
    </div>
    <center>
        <h2>Facility Management</h2>
        <div class = header-panel>
            <p><a href="facility_create.jsp">Add New User</a></p>
        </div>
    </center>
    <div align="center">
        <table class="table table-info table-striped">
            <tr>
                <th>ID Dịch vụ</th>
                <th>Tên dịch vụ</th>
                <th>Diện tích phòng</th>
                <th>Giá phòng</th>
                <th>Số người tối đa</th>
                <th>Kiểu thuê</th>
                <th>Loại dịch vụ</th>
                <th>Tiêu chuẩn phòng</th>
                <th>Mô tả khác</th>
                <th>Diện tích hồ bơi</th>
                <th>Số tầng</th>
                <th>Sửa</th>
                <th>Xóa</th>
            </tr>

            <tr>
                <td class ="">1</td>
                <td>Xông hơi</td>
                <td>30</td>
                <td>2000</td>
                <td>4000</td>
                <td>2</td>
                <td>Không có</td>
                <td>Vip</td>
                <td>không có</td>
                <td>40</td>
                <td>12</td>
                <td><a class="bg-primary text-white" href="facility_edit.jsp">Edit</a></td>
                <td>Xóa</td>
            </tr>
            <tr>
                <td>2</td>
                <td>Xông hơi</td>
                <td>30</td>
                <td>2000</td>
                <td>4000</td>
                <td>2</td>
                <td>Không có</td>
                <td>Vip</td>
                <td>không có</td>
                <td>40</td>
                <td>12</td>
                <td><a class="bg-primary text-white" href="facility_edit.jsp">Edit</a></td>
                <td>Xóa</td>
            </tr>

            <tr>
                <td>3</td>
                <td>Xông hơi</td>
                <td>30</td>
                <td>2000</td>
                <td>4000</td>
                <td>2</td>
                <td>Không có</td>
                <td>Vip</td>
                <td>không có</td>
                <td>40</td>
                <td>12</td>
                <td><a class="bg-primary text-white" href="facility_edit.jsp">Edit</a></td>
                <td>Xóa</td>
            </tr>


            <c:forEach var="user" items="${listUser}">
                <tr>
                    <td><c:out value=""/></td>
                    <td><c:out value=""/></td>
                    <td><c:out value=""/></td>
                    <td><c:out value=""/></td>
                    <td><c:out value=""/></td>
                    <td><c:out value=""/></td>
                    <td><c:out value=""/></td>
                    <td><c:out value=""/></td>
                    <td><c:out value=""/></td>
                    <td><c:out value=""/></td>
                    <td><c:out value=""/></td>
                    <td> <a class="bg-primary text-white" href="facility_edit.jsp">Edit</a></td>
                    <td>
                        <button onclick="showInfoDelete('${user.id}','${user.name}')" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            Delete
                        </button>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <form action="/users?action=delete" method="post">
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <input hidden type="text" name="id" id="deleteId">
                            <span>Bạn có muốn xóa : </span><span id="deleteName"></span>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Delete</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <script>
            function showInfoDelete(id,name) {
                document.getElementById("deleteId").value= id;
                document.getElementById("deleteName").innerText=name;
            }
        </script>
    </div>

</body>
</html>