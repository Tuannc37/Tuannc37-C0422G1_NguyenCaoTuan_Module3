
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
                            <a class="nav-link text-light" href="view/index.jsp">Home</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link text-light" href="view/employee/employee_list.jsp">Employee</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link text-light" href="view/customer/customer_list.jsp">Customer</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link text-light" href="/view/facility/facility_list.jsp">Service</a>
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
</body>
</html>
