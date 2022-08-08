<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer Management Application</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>

    <style>
        a.add {
            padding: 5px 5px;
            background-color: #b7e7e2;
            text-decoration: none;
            color: black;
            border-radius: 5px;
        }
        a.bg-primary.text-white {
            padding: 9px 13px;
            border-radius: 5px;
            text-decoration: none;
            display: block;
        }
    </style>
</head>
<body>
    <div class="container-fluid menu">
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-dark">
                <div class="collapse navbar-collapse row w-100">
                    <div class="col-md-2">
                        <img class="ml-5" style="margin-left: 34px;" src="image/Logo-FURAMA-RESORT.jpg" alt="" height="100px">
                    </div>
                    <div class="col-md-7">
                        <ul class="navbar-nav mr-auto w-100" id="navbarSupportedContent">
                            <li class="nav-item active">
                                <a class="nav-link text-light" href="">Home</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link text-light" href="/employee">Employee</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link text-light" href="/customers">Customer</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link text-light" href="/facility">Service</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link text-light" href="#">Contract</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <form class="form-inline my-2 my-lg-0 row" action="/facility?action=search" method="post">
                            <div class = "col-md-7"><input class="form-control mr-sm-2" name="serviceName"  type="search" placeholder="Search" aria-label="Search"></div>
                            <div class = "col-md-5"><button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button></div>
                        </form>
                    </div>
                </div>
            </nav>
        </header>
    </div>
    <div class = "container-fluid">
        <center style="margin-top: 10px;">
            <h2>Facility Management</h2>
            <div class = header-panel>
                <p><a class = "add" href="/facility?action=create&serviceId=${facility.serviceId}">Add New Facility</a></p>
            </div>
        </center>
        <div align="center">
            <table class="table table-info table-striped container">
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
                    <th>Dịch vụ đi kèm</th>
                    <th>Sửa</th>
                    <th>Xóa</th>
                </tr>

                <c:forEach var="facility" items="${facilityList}">
                    <tr>
                        <td><c:out value="${facility.serviceId}"/></td>
                        <td><c:out value="${facility.serviceName}"/></td>
                        <td><c:out value="${facility.serviceArea}"/></td>
                        <td><c:out value="${facility.serviceCost}"/></td>
                        <td><c:out value="${facility.serviceMaxPeople}"/></td>
                        <td><c:out value="${facility.rentTypeId}"/></td>
                        <td><c:out value="${facility.serviceTypeId}"/></td>
                        <td><c:out value="${facility.standardRoom}"/></td>
                        <td><c:out value="${facility.description}"/></td>
                        <td><c:out value="${facility.poolArea}"/></td>
                        <td><c:out value="${facility.numberOfFloor}"/></td>
                        <td><c:out value="${facility.freeAccompanying}"/></td>
                        <td> <a class="bg-primary text-white" href="/facility?action=update&serviceId=${facility.serviceId}">Edit</a></td>
                        <td>
                            <button onclick="showInfoDelete('${facility.serviceId}','${facility.serviceName}')" type="button" class="btn btn-primary bg-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                Delete
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <form action="/facility?action=delete" method="post">
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <input hidden type="text" name="serviceId" id="deleteId">
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
    </div>

</body>
</html>