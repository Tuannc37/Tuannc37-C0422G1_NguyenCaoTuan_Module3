<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <form action="/customers?action=update" method="post">
                <caption>
                    <h3 style="align-content: center; color: #0069d9">Edit Customer Form</h3>
                </caption>
                    <input type="hidden" name="customerId" value=""/>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Customer Code:</label>
                    <input type="text" name="customerCode" value="" class="form-control"
                           id="exampleFormControlInput1" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Choose Type Customer</label>
                    <select class="form-control" name="customerTypeId" id="exampleFormControlSelect1">
                        <c:forEach items="${typeList}" var="type">
                            <option value="${type.customerTypeId}">${type.customerTypeName}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput2">Customer Name:</label>
                    <input type="text" name="customerName" class="form-control" value=""
                           id="exampleFormControlInput2" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput3">Customer Birth:</label>
                    <input type="date" name="customerBirth" class="form-control" value=""
                           id="exampleFormControlInput3" required>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Choose Gender</label>
                    <div id="exampleFormControlSelect2">
                        <input type="radio" name="customerGender" value="0" checked>Nam
                        <input type="radio" name="customerGender" value="1">Nữ
                    </div>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput4">Customer IDCard:</label>
                    <input type="text" name="customerIdCard" class="form-control" value=""
                           id="exampleFormControlInput4" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput5">Customer Phone:</label>
                    <input type="text" name="customerPhone" class="form-control" value=""
                           id="exampleFormControlInput5" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput6">Customer Email:</label>
                    <input type="text" name="customerEmail" class="form-control" value=""
                           id="exampleFormControlInput6" required>
                    <p style="color: red"></p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput7">Customer Address:</label>
                    <input type="text" name="customerAddress" class="form-control" value=""
                           id="exampleFormControlInput7" required>
                </div>
                <div class="w-100">
                    <button type="submit" class="btn btn-success w-50" style="alignment: center">Lưu</button>
                </div>
                <div class="w-100">
                    <p style="color: red; alignment: center!important;"></p>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
