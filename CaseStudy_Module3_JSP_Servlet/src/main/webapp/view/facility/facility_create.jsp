<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create Facility Page</title>
    <style>
        .container.w-50.mt-2.p-2 {
            background-color: #b1efb3;
            border-radius: 16px;
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
                        <img src="../../image/Logo-FURAMA-RESORT.jpg" alt="" height="100px" style="margin-left: 34px;">
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
                        <form class="form-inline my-2 my-lg-0 row">
                            <div class = "col-md-7"><input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"></div>
                            <div class = "col-md-5"><button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button></div>
                        </form>
                    </div>
                </div>
            </nav>
        </header>
    </div>
    <div class="container w-50 mt-2 p-2 container-fluid">
        <h3 align="center">THÊM MỚI DỊCH VỤ</h3>
        <form class="form-group" action="" method="post">
            <div class="col-md-12">
                <label class="form-label">Loại dịch vụ:</label>
                <select name="serviceTypeId" class="form-select" onchange="showServiceInput(this.value)">
                    <c:forEach items="${serviceTypeList}" var="type">
                        <option value="${type.serviceTypeId}">${type.serviceTypeName}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="col-md-12">
                <label for="name" class="form-label">Tên dịch vụ:</label>
                <input type="text" class="form-control" id="name" name="serviceName">
            </div>

            <div class="col-md-12">
                <label for="area" class="form-label">Diện tích sử dụng:</label>
                <input type="text" class="form-control" id="area" name="serviceArea">
                <p style="color: red">${number}</p>
            </div>

            <div class="col-md-12">
                <label for="cost" class="form-label">Chi phí thuê:</label>
                <input type="text" class="form-control" id="cost"  name="serviceCost" >
                <p style="color: red">${number}</p>
            </div>

            <div class="col-md-12">
                <label for="inputAddress2" class="form-label">Số lượng người tối đa: </label>
                <input type="text" class="form-control" id="inputAddress2"  name="serviceMaxPeople" >
                <p style="color: red">${number}</p>
            </div>

            <div class="col-md-12">
                <label for="inputCity" class="form-label">Kiểu thuê:</label>
                <select name="rentTypeId" id = "inputCity"  class="form-select">
                    <c:forEach items="${typeList}" var="type">
                        <option value="${type.rentTypeId}">${type.rentTypeName}</option>
                    </c:forEach>
                </select>
            </div>

            <%--Villa và House sẽ có chung--%>
            <div class="col-md-12" id="dv1" style="display: none">
                <label for="standard_room" class="form-label">Tiêu chuẩn phòng:</label>
                <input type="text" class="form-control" id="standard_room" name="standardRoom">
            </div>

            <div class="col-md-12" id="dv2" style="display: none">
                <label for="description_other_convenience" class="form-label">Mô tả tiện nghi khác:</label>
                <input type="text" class="form-control" id="description_other_convenience" name="description">
            </div>

            <div class="col-md-12" id="dv3" style="display: none">
                <label for="number_of_floors" class="form-label">Số tầng:</label>
                <input type="text" value="0" class="form-control" id="number_of_floors" name="numberOfFloor">
                <p style="color: red">${number}</p>
            </div>


            <div class="col-md-12" id="dv4" style="display: none">
                <label for="pool_area" class="form-label">Diện tích hồ bơi:</label>
                <input type="text" value="0" class="form-control" id="pool_area" name="poolArea">
                <p style="color: red">${number}</p>
            </div>

            <div class="col-12 text-center" style="margin-top: 10px;">
                <button type="submit" class="btn btn-primary">Cập nhật</button>
            </div>
            <div class="col-12 text-center" style="margin-top: 10px;">
                <p style="color: forestgreen; alignment: center!important;">${message}</p>
            </div>
        </form>
    </div>

    <script>
        function showServiceInput(v) {
            console.log(v)
            console.log(typeof v)
            switch (v){
                case "1":
                    document.getElementById("dv1").style.display="block";
                    document.getElementById("dv2").style.display="block";
                    document.getElementById("dv3").style.display="block";
                    document.getElementById("dv4").style.display="block";
                    break;
                case "2":
                    document.getElementById("dv1").style.display="block";
                    document.getElementById("dv2").style.display="block";
                    document.getElementById("dv3").style.display="block";
                    document.getElementById("dv4").style.display="none";
                    break;
                case "3":
                    document.getElementById("dv1").style.display="none";
                    document.getElementById("dv2").style.display="none";
                    document.getElementById("dv3").style.display="none";
                    document.getElementById("dv4").style.display="none";
                    break;
                default:
                    document.getElementById("dv1").style.display="none";
                    document.getElementById("dv2").style.display="none";
                    document.getElementById("dv3").style.display="none";
                    document.getElementById("dv4").style.display="none";
            }
        }
    </script>
</body>
</html>
<%--     switch (v) {
                case 1:
                    document.getElementById("dv1").style.display="block";
                    document.getElementById("dv2").style.display="block";
                    document.getElementById("dv3").style.display="block";
                    document.getElementById("dv4").style.display="block";
                    break;
                case 2:
                    document.getElementById("dv1").style.display="block";
                    document.getElementById("dv2").style.display="block";
                    document.getElementById("dv3").style.display="block";
                    document.getElementById("dv4").style.display="none";
                    break;
                case 3:
                    document.getElementById("dv1").style.display="none";
                    document.getElementById("dv2").style.display="none";
                    document.getElementById("dv3").style.display="none";
                    document.getElementById("dv4").style.display="none";
                    break;
                default:
                    document.getElementById("dv1").style.display="none";
                    document.getElementById("dv2").style.display="none";
                    document.getElementById("dv3").style.display="none";
                    document.getElementById("dv4").style.display="none";
                    break;
            }--%>