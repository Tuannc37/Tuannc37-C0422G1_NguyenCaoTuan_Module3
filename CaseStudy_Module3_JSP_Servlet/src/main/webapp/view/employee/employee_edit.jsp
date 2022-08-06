
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        .w-100.text-center {
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
                        <img src="../../image/Logo-FURAMA-RESORT.jpg" alt="" height="100px" style="margin-left: 34px;">
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
    <div class="create-form">
        <div class="main-form container w-50">
            <form action="/employees?action=create" method="post">
                <h5 class ="text-center" style="align-content: center; color: #0069d9">CẬP NHẬT</h5>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Tên nhân viên:</label>
                    <input type="text" name="employeeName" value="" class="form-control"
                           id="exampleFormControlInput1"
                           placeholder="Nguyễn Văn A" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput2">Ngày sinh:</label>
                    <input type="date" name="employeeBirthday" class="form-control" value=""
                           id="exampleFormControlInput2"
                           placeholder="Nguyen Van A" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput3">Số CMND:</label>
                    <input type="text" name="employeeIdCard" class="form-control" value=""
                           id="exampleFormControlInput3"
                           placeholder="XXXXXXXX or XXXXXXXXXX" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput4">Mức lương:</label>
                    <input type="number" name="employeeSalary" class="form-control" value=""
                           id="exampleFormControlInput4"
                           placeholder="Số dương" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput5">Số điện thoại:</label>
                    <input type="text" name="employeePhone" class="form-control" value=""
                           id="exampleFormControlInput5"
                           placeholder="(84)xxxxxxxx or 0xxxxxxxx" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput6">Email:</label>
                    <input type="text" name="employeeEmail" class="form-control" value=""
                           id="exampleFormControlInput6"
                           placeholder="abcxyz@gmail.com">
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput7">Địa chỉ:</label>
                    <input type="text" name="employeeAddress" class="form-control" value=""
                           id="exampleFormControlInput7" required>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Vị trí</label>
                    <select class="form-select" name="positionId" id="exampleFormControlSelect1">
                        <option value="receptionist" >Lễ tân</option>
                        <option value="waiter" >Phục vụ</option>
                        <option value="specialist" >Chuyên viên</option>
                        <option value="supervisor" >Gián sát</option>
                        <option value="manager" >Quản lý</option>
                        <option value="director" >Giám đốc</option>
                        <%--                        <c:forEach items="${listPosition}" var="position">--%>
                        <%--                            <option value="${position.positionId}">${position.positionName}</option>--%>
                        <%--                        </c:forEach>--%>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Trình độ</label>
                    <select class="form-select" name="educationDegreeId" id="exampleFormControlSelect2">
                        <option value="intermediate" >Trung Cấp</option>
                        <option value="college" >Cao Đẳng</option>
                        <option value="university" >Đại Học</option>
                        <option value="afterUniversity" >Sau Đại Học</option>
                        <%--                        <c:forEach items="${listDegree}" var="degree">--%>
                        <%--                            <option value="${degree.educationDegreeId}">${degree.educationDegreeName}</option>--%>
                        <%--                        </c:forEach>--%>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect3">Bộ phận</label>
                    <select class="form-select" name="divisionId" id="exampleFormControlSelect3">
                        <option value="sales" >Sale – Marketing</option>
                        <option value="administration" >Hành Chính</option>
                        <option value="service" >Phục vụ</option>
                        <option value="management" > Quản lý</option>
                        <%--                        <c:forEach items="${listDivision}" var="division">--%>
                        <%--                            <option value="${division.divisionId}">${division.divisionName}</option>--%>
                        <%--                        </c:forEach>--%>
                    </select>
                </div>
                <div class="w-100 text-center">
                    <button type="submit" class="btn btn-success w-50" style="alignment: center">Lưu</button>
                </div>
                <div class="w-100">
                    <p style="color: forestgreen; alignment: center!important;"></p>
                </div>
            </form>
        </div>
    </div>

</body>
</html>
