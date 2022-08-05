<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>

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
                    <img src="../../image/Logo-FURAMA-RESORT.jpg" alt="" height="100px">
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
                    <form class="form-inline my-2 my-lg-0 row">
                        <div class = "col-md-7"><input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"></div>
                        <div class = "col-md-5"><button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button></div>
                    </form>
                </div>
            </div>
        </nav>
    </header>
</div>
<div>

    <div class="col-md-5 bg-light mt-5 p-3" style="margin: auto">
        <h3>Create Contract</h3>
        <form action="" method="post">
            <div class="mb-3 row">
                <label for="start-date" class="col-sm-4 col-form-label">Ngầy bắt đầu</label>
                <div class="col-sm-8">
                    <input type="date" class="form-control" id="start-date">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="end-date" class="col-sm-4 col-form-label">Ngày kết thúc</label>
                <div class="col-sm-8">
                    <input type="date" class="form-control" id="end-date">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="deposit" class="col-sm-4 col-form-label">Tiền gửi</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="deposit" name="deposit">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="total-money" class="col-sm-4 col-form-label">Tổng tiền</label>
                <div class="col-sm-8">
                    <input type="text" readonly class="form-control" id="total-money" name="total-money">
                </div>
            </div>

            <div class="mb-3 row">
                <label class="col-sm-4 col-form-label">Khách hàng thuê dịch vụ</label>
                <div class="col-sm-8">
                    <select name=""  class="form-select">
                        <option value="diamond" >Diamond</option>
                        <option value="gold" >Gold</option>
                        <option value="silver" >Silver</option>
                        <option value="member" >Member</option>
                    </select>
                </div>
            </div>
            <div class="mb-3 row">
                <label class="col-sm-4 col-form-label">Dịch vụ</label>
                <div class="col-sm-8">
                    <select name=""  class="form-select">
                        <option value="Villa" >Villa</option>
                        <option value="House" >House</option>
                        <option value="Room" >Room</option>
                    </select>
                </div>
            </div>
            <div class="mb-3 row">
                <label  class="col-sm-4 col-form-label">Dịch vụ đi kèm</label>
                <div class="col-sm-8">
                    <button type="button" class="btn btn-primary bg-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        +
                    </button>
                </div>
            </div>
            <div class="text-center">
                <button class="btn btn-danger" type="button" onclick="">HỦY BỎ</button>
                <button class="btn btn-success" type="submit">TẠO HỢP ĐỒNG</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
