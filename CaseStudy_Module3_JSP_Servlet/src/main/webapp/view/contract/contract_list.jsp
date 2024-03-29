
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Furama Resort</title>
    <style>
        .col-md-8.bg-light.p-3 {
            width: 90%;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>

</head>
<body>
<%--<jsp:include page="header.jsp"></jsp:include>--%>
<p><c:if test='${requestScope["msg"] != null}'>
    <span class="message">${requestScope["msg"]}</span>
</c:if>
</p>
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
<center style="margin-top: 10px;">
    <h2>Danh Sách Dịch Vụ</h2>
</center>
<div align="center">
    <table class="table table-striped table-hover container">
        <tr class="bg-dark">
            <th class="text-white">#</th>
            <th class="text-white">Dịch vụ</th>
            <th class="text-white">Khách hàng</th>
            <th class="text-white">Ngày bắt đầu</th>
            <th class="text-white">Ngày kết thúc</th>
            <th class="text-white">Số tiền cọc</th>
            <th class="text-white">Tổng tiền</th>
            <th class="text-white">Các dịch vụ đi kèm</th>
        </tr>
        <tr>
            <td>1</td>
            <td>dsdsds</td>
            <td>dsdsdsd</td>
            <td>dsdsdsd</td>
            <td>dsdsds</td>
            <td>dsdsds</td>
            <td>dsdsdsds</td>
            <td>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#staticBackdrop" onclick="">
                    +
                </button>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#attachFacility" onclick="showModalDeleteControl('a','b','c')">
                    Danh sách các dịch vụ đi kèm
                </button>
            </td>
        </tr>
        <tr>
            <td>2</td>
            <td>21</td>
            <td>Vip</td>
            <td>Tuấn</td>
            <td>10/04/1994</td>
            <td>Nam</td>
            <td>121212113</td>
            <td>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#staticBackdrop" onclick="">
                    +
                </button>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#attachFacility" onclick="showModalDeleteControl('a','b','c')">
                    Danh sách các dịch vụ đi kèm
                </button>
            </td>
        </tr>
        <tr>
            <td>3</td>
            <td>21</td>
            <td>Vip</td>
            <td>Tuấn</td>
            <td>10/04/1994</td>
            <td>Nam</td>
            <td>121212113</td>
            <td>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#staticBackdrop" onclick="">
                    +
                </button>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#attachFacility" onclick="showModalDeleteControl('a','b','c')">
                    Danh sách các dịch vụ đi kèm
                </button>
            </td>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value=""/></td>
                <td><c:out value=""/></td>
                <td><c:out value=""/></td>
                <td><c:out value=""/></td>
                <td><c:out value=""/></td>
                <td><c:out value=""/></td>
                <td><c:out value=""/></td>
                <td><c:out value=""/></td>
                <td>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                            data-bs-target="#staticBackdrop" onclick="">
                        +
                    </button>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                            data-bs-target="#attachFacility" onclick="showModalDeleteControl('a','b','c')">
                        Danh sách các dịch vụ đi kèm
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
    <form action="/users?action=delete" method="post">
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <input hidden type="text" name="id" id="deleteId">
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



    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Create Contract</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-8 bg-light p-3" style="margin: auto">
                            <form action="" method="post">
                                <div class="mb-2 row">
                                    <label for="contract-id" class="col-sm-4 col-form-label">Mã hợp đồng</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="contract-id" name="contract-id">
                                    </div>
                                </div>
                                <div class="mb-2 row">
                                    <label for="attach-facility" class="col-sm-4 col-form-label">Mã dịch vụ đi kèm</label>
                                    <div class="col-sm-8">
                                        <input type="text" readonly class="form-control" id="attach-facility" name="attach-facility">
                                    </div>
                                </div>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-danger" type="button" onclick="">HỦY BỎ</button>
                    <button class="btn btn-success" type="submit">TẠO HỢP ĐỒNG</button>
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="attachFacility" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">

            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalEditLable">DANH SÁCH DỊCH VỤ ĐI KÈM</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body container-fluid">
                    <table class="table table-striped">
                        <tr>
                            <th>Tên dịch vụ đi kèm</th>
                            <th>Đơn vị</th>
                            <th>Giá tiền</th>
                            <th>Số lượng</th>
                        </tr>
                        <tr>
                            <td>Karaoke</td>
                            <td>Giờ</td>
                            <td>100000</td>
                            <td>1</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>




    <script>
        function showInfoDelete(id,name) {
            document.getElementById("deleteId").value= id;
            document.getElementById("deleteName").innerText=name;
        }
        function displayAttachFacility() {
            document.getElementById("tableFacilityContract").style.display='block'
            document.getElementById("buttonHide").style.display='block'
        }
            function hideAttachFacility() {
            document.getElementById("tableFacilityContract").style.display='none'
            document.getElementById("buttonHide").style.display='none'
        }
    </script>
</div>
</body>
</html>
