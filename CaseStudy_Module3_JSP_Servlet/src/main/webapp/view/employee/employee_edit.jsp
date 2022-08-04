<%--
  Created by IntelliJ IDEA.
  User: Hữu Khánh
  Date: 5/24/2021
  Time: 9:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
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
            <form action="/employees?action=update" method="post">
                <caption>
                    <h3 style="align-content: center; color: #0069d9">Edit Employee Form</h3>
                </caption>
                <c:if test="${employee != null}">
                    <input type="hidden" name="employeeId" value="<c:out value=''  />"/>
                </c:if>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Employee Name:</label>
                    <input type="text" name="employeeName" value="" class="form-control"
                           id="exampleFormControlInput1" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput2">Employee Birth:</label>
                    <input type="date" name="employeeBirth" class="form-control" value=""
                           id="exampleFormControlInput2" required>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput3">Employee ID Card:</label>
                    <input type="text" name="employeeIdCard" class="form-control" value=""
                           id="exampleFormControlInput3" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput4">Employee Salary:</label>
                    <input type="number" name="employeeSalary" class="form-control" value=""
                           id="exampleFormControlInput4" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput5">Employee Phone:</label>
                    <input type="text" name="employeePhone" class="form-control" value=""
                           id="exampleFormControlInput5" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput6">Employee Email:</label>
                    <input type="text" name="employeeEmail" class="form-control" value=""
                           id="exampleFormControlInput6" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput7">Employee Address:</label>
                    <input type="text" name="employeeAddress" class="form-control" value=""
                           id="exampleFormControlInput7" required>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Choose Position</label>
                    <select class="form-control" name="positionId" id="exampleFormControlSelect1">
<%--                        <c:forEach items="${listPosition}" var="position">--%>
<%--                            <option value="${position.positionId}">${position.positionName}</option>--%>
<%--                        </c:forEach>--%>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Choose Education Degree</label>
                    <select class="form-control" name="educationDegreeId" id="exampleFormControlSelect2">
<%--                        <c:forEach items="${listDegree}" var="degree">--%>
<%--                            <option value="${degree.educationDegreeId}">${degree.educationDegreeName}</option>--%>
<%--                        </c:forEach>--%>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect3">Choose Division</label>
                    <select class="form-control" name="divisionId" id="exampleFormControlSelect3">
<%--                        <c:forEach items="${listDivision}" var="division">--%>
<%--                            <option value="${division.divisionId}">${division.divisionName}</option>--%>
<%--                        </c:forEach>--%>
                    </select>
                </div>
                <div class="w-100">
                    <button type="submit" class="btn btn-success w-50" style="alignment: center">Cập nhật</button>
                </div>
                <p style="color: #721c24">${message}</p>
                <div class="w-100">
                    <p style="color: red; alignment: center!important;">${mess}</p>
                </div>
            </form>
        </div>
    </div>

</body>
</html>
