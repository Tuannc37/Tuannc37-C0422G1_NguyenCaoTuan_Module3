<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer Management Application</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
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
                        <img class="ml-5" style="margin-left: 34px;"  src="../../image/Logo-FURAMA-RESORT.jpg" alt="" height="100px">
                    </div>
                    <div class="col-md-7">
                        <ul class="navbar-nav mr-auto w-100" id="navbarSupportedContent">
                            <li class="nav-item active">
                                <a class="nav-link text-light" href="view/index.jsp">Home</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link text-light" href="view/employee/employee_list.jsp">Employee</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link text-light" href="view/customer/customer_list.jsp">Customer</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link text-light" href="view/facility/facility_list.jsp">Service</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link text-light" href="#">Contract</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <form class="form-inline my-2 my-lg-0 row" action="/customers?action=search" method="post">
                            <div class = "col-md-7"><input class="form-control mr-sm-2" name="customerName" type="search" placeholder="Search" aria-label="Search"></div>
                            <div class = "col-md-5"><button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button></div>
                        </form>
                    </div>
                </div>
            </nav>
        </header>
    </div>
    <center style="margin-top: 10px;">
        <h2>Customer Management</h2>
        <div class = header-panel>
            <p><a class = "add" href="/customers?action=create&id=${customer.customerId}">Add New User</a></p>
        </div>
    </center>
    <div align="center container-fluid">
        <table class="table table-info table-striped ">
            <tr>
                <th>ID khách hàng</th>
                <th>Loại khách hàng</th>
                <th>Tên khách hàng</th>
                <th>Ngày sinh</th>
                <th>Giới tính</th>
                <th>Số CMND</th>
                <th>Số điện thoại</th>
                <th>Email</th>
                <th>Địa chỉ</th>
                <th>Sửa</th>
                <th>Xóa</th>
            </tr>

            <c:forEach var="customer" items="${customerList}">
                <tr>
                    <td><c:out value="${customer.customerId}"/></td>
                    <td><c:out value="${customer.customerTypeId}"/></td>
                    <td><c:out value="${customer.customerName}"/></td>
                    <td><c:out value="${customer.customerBirth}"/></td>
                    <td><c:out value="${customer.customerGender}"/></td>
                    <td><c:out value="${customer.customerIdCard}"/></td>
                    <td><c:out value="${customer.customerPhone}"/></td>
                    <td><c:out value="${customer.customerEmail}"/></td>
                    <td><c:out value="${customer.customerAddress}"/></td>
                    <td> <a class="bg-primary text-white" href="/customers?action=update&id=${customer.customerId}">Edit</a></td>
                    <td>
                        <button onclick="showInfoDelete('${customer.customerId}','${customer.customerName}')" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            Delete
                        </button>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <form action="/customers?action=delete" method="post">
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <input hidden type="text" name="customerId" id="deleteId">
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