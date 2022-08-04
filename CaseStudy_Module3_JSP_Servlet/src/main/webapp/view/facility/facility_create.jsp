<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create Facility Page</title>
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
    <div class="create-form">
        <div class="container w-50">
            <form action="/facility?action=create" method="post">
                <h3 style="text-align: center; color: #f1b0b7">Create Facility Form</h3>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Service Name:</label>
                    <input type="text" name="serviceName" value="" class="form-control"
                           id="exampleFormControlInput1"
                           placeholder="DV-XXXX (X = 0-9)" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput2">Service Area Name:</label>
                    <input type="number" name="serviceArea" class="form-control" value=""
                           id="exampleFormControlInput2"
                           placeholder="Số dương" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput3">Service Cost:</label>
                    <input type="number" name="serviceCost" class="form-control" value=""
                           placeholder="Số dương" id="exampleFormControlInput3" required>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput4">Max People:</label>
                    <input type="number" name="serviceMaxPeople" class="form-control" value=""
                           id="exampleFormControlInput4"
                           placeholder="Số dương" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Choose Rent Type:</label>
                    <select class="form-control" name="rentTypeId" id="exampleFormControlSelect1">
<%--                        <c:forEach items="${rentTypeList}" var="rType">--%>
<%--                            <option value="${rType.rentTypeId}">${rType.rentTypeName}</option>--%>
<%--                        </c:forEach>--%>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Choose Service Type:</label>
                    <select class="form-control" name="serviceTypeId" id="exampleFormControlSelect2">
<%--                        <c:forEach items="${serviceTypeList}" var="sType">--%>
<%--                            <option value="${sType.serviceTypeId}">${sType.serviceTypeName}</option>--%>
<%--                        </c:forEach>--%>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput5">Standard Room:</label>
                    <input type="text" name="standardRoom" class="form-control" value=""
                           id="exampleFormControlInput5" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput6">Description:</label>
                    <input type="text" name="description" class="form-control" value=""
                           id="exampleFormControlInput6" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput7">Pool Area:</label>
                    <input type="number" name="poolArea" class="form-control" value=""
                           placeholder="Số dương" id="exampleFormControlInput7" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput8">Number Of Floor:</label>
                    <input type="number" name="numberOfFloor" class="form-control" value=""
                           placeholder="Số dương" id="exampleFormControlInput8" required>
                    <p style="color: red"></p>
                </div>
                <div class="w-100" style="display:  flex">
                    <button type="submit" class="btn btn-success w-50" style="alignment: center">Lưu</button>
                    <a href="/facility" class="btn btn-secondary w-50">Quay lại</a>
                </div>
                <div class="w-100">
                    <p style="color: forestgreen; alignment: center!important;"></p>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
