<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        .container.w-50 {
            background-color: #9bc4e5;
            margin-top: 40px;
            border-radius: 10px;
            padding: 10px 30px;
        }
        .w-100.mt-20.text-center {
            margin-top: 20px;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container-fluid menu">
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-dark">
                <div class="collapse navbar-collapse row w-100">
                    <div class="col-md-2">
                        <img class="ml-5" style="margin-left: 34px;" src="../../image/Logo-FURAMA-RESORT.jpg" alt="" height="100px">
                    </div>
                    <div class="col-md-7">
                        <ul class="navbar-nav mr-auto w-100" id="navbarSupportedContent">
                            <li class="nav-item active">
                                <a class="nav-link text-light" href="view/index.jsp">Home</a>
                            </li>
                            mấy cái này là link trên nav bả pk a/link bữa a set cứng á à, sửa lại qua servlet k a tiến nói đó
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
                        <form class="form-inline my-2 my-lg-0 row">
                            <div class = "col-md-7"><input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"></div>
                            <div class = "col-md-5"><button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button></div>
                        </form>
                    </div>
                </div>
            </nav>
        </header>
    </div>
    <div class="edit-form">
        <div class="container w-50">
            <form action="/customers?action=update" method="post">
                <h5 class ="text-center" style="align-content: center; color: #0069d9">CẬP NHẬT</h5>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Mã khách hàng:</label>
                    <input readonly type="text" name="customerId" value="${customer.customerId}" class="form-control"
                           id="exampleFormControlInput1">
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Loại khách hàng:</label>
                    <select class="form-select" name="customerTypeId" id="exampleFormControlSelect1">
                        <c:forEach items="${typeList}" var="type">
                           <c:if test="${type.customerTypeId == customer.customerTypeId}">
                               <option value="${type.customerTypeId}">${type.customerTypeName}</option>
                           </c:if>
                        </c:forEach>
                        <c:forEach items="${typeList}" var="type">
                            <c:if test="${type.customerTypeId != customer.customerTypeId}">
                            <option value="${type.customerTypeId}">${type.customerTypeName}</option>
                            </c:if>
                        </c:forEach>
                        // lamf vậy để nó hiển thị đúng cái đầu  tiên là cái loại khách hàng hiện tại của minh
                        để lỡ người ta k sửa cái loại khách hàng thì nó vẫn đúng
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput2">Tên khách hàng:</label>
                    <input type="text" name="customerName" class="form-control" value="${customer.customerName}"
                           id="exampleFormControlInput2">
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput3">Ngày sinh:</label>
                    <input type="date" name="customerBirth" class="form-control" value="${customer.customerBirth}"
                           id="exampleFormControlInput3" required>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Giới tính:</label>
                    <select id="exampleFormControlSelect2" class="form-select" name="customerGender">
                       <c:if test="${customer.customerGender == 0}">
                           <option value="0">Nữ</option>
                           <option value="1">Nam</option>
                       </c:if>
                        <c:if test="${customer.customerGender == 1}">
                            <option value="1">Nam</option>
                            <option value="0">Nữ</option>
                        </c:if>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput4">Số CMND:</label>
                    <input type="text" name="customerIdCard" class="form-control" value="${customer.customerIdCard}"
                           id="exampleFormControlInput4"
                           placeholder="XXXXXXXX or XXXXXXXXXX" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput5">Số điện thoại:</label>
                    <input type="text" name="customerPhone" class="form-control" value="${customer.customerPhone}"
                           id="exampleFormControlInput5"
                           placeholder="(84)90xxxxxxx or (84)91xxxxxxx" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput6">Email:</label>
                    <input type="text" name="customerEmail" class="form-control" value="${customer.customerEmail}"
                           id="exampleFormControlInput6"
                           placeholder="abcxyz@gmail.com">
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput7">Địa chỉ:</label>
                    <input type="text" name="customerAddress" class="form-control" value="${customer.customerAddress}"
                           id="exampleFormControlInput7" required>
                </div>
                <div class="w-100 mt-20 text-center">
                    <button type="submit" class="btn btn-success w-50" style="alignment: center">Lưu</button>
                </div>
                <div class="w-100 ">
                    <p style="color: forestgreen; alignment: center!important;"></p>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
