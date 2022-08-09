<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer Create Form</title>
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
                        <img class="ml-5" style="margin-left: 34px;" src="../../image/Logo-FURAMA-RESORT.jpg" alt="" height="100px">
                    </div>
                    <div class="col-md-7">
                        <ul class="navbar-nav mr-auto w-100" id="navbarSupportedContent">
                            <li class="nav-item active">
                                <a class="nav-link text-light" href="view/index.jsp">Home</a>
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

    <div class="create-form">
        <div class="container w-50">
            <form action="/customers?action=create" method="post">
                <h5 style="align-content: center; color: #0069d9">THÊM MỚI CUSTOMER</h5>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Loại khách hàng:</label>
                    <select class="form-select" name="customerTypeId" id="exampleFormControlSelect1">
                        <c:forEach items="${typeList}" var="type">
                            <option value="${type.customerTypeId}">${type.customerTypeName}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput2">Tên khách hàng:</label>
                    <input type="text" name="customerName" class="form-control" value="${customer.customerName}"
                           id="exampleFormControlInput2"
                           placeholder="Nguyen Van A" required>
                    <p style="color: red">${name}</p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput3">Ngày sinh:</label>
                    <input type="date" name="customerBirth" class="form-control" value=""
                           id="exampleFormControlInput3" required>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Giới tính:</label>
                    <div id="exampleFormControlSelect2">
                        <input type="radio" name="customerGender" value="1" checked>Nam
                        <input type="radio" name="customerGender" value="2">Nữ
                    </div>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput4">Số CMND:</label>
                    <input type="text" name="customerIdCard" class="form-control" value="${customer.customerIdCard}"
                           id="exampleFormControlInput4"
                           placeholder="XXXXXXXX or XXXXXXXXXX" required>
                    <p style="color: red">${idCard}</p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput5">Số điện thoại:</label>
                    <input type="text" name="customerPhone" class="form-control" value="${customer.customerPhone}"
                           id="exampleFormControlInput5"
                           placeholder="(84)90xxxxxxx or (84)91xxxxxxx" required>
                    <p style="color: red">${phone}</p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput6">Email:</label>
                    <input type="text" name="customerEmail" class="form-control" value="${customer.customerEmail}"
                           id="exampleFormControlInput6"
                           placeholder="abcxyz@gmail.com">
                    <p style="color: red">${email}</p>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput7">Địa chỉ:</label>
                    <input type="text" name="customerAddress" class="form-control" value="${customer.customerAddress}"
                           id="exampleFormControlInput7" required>
                </div>
                <div class="w-100 text-center">
                    <button type="submit" class="btn btn-success w-50" style="alignment: center">Lưu</button>
                </div>
                <div class="w-100 text-center mt-20" id = >
                    <p style="color: forestgreen; alignment: center!important;">${message}</p>
                </div>
            </form>
        </div>
    </div>

    <footer class="bg-dark text-center text-white" style="margin-top: 60px">
        <div class="container p-4">
            <section class="mb-4">
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-facebook-f"></i></a>
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-twitter"></i></a>
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-google"></i></a>
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-instagram"></i></a>
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-linkedin-in"></i></a>
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-github"></i></a>
            </section>
            <section class="">
                <form action="">
                    <div class="row d-flex justify-content-center">
                        <div class="col-auto">
                            <p class="pt-2">
                                <strong>Sign up</strong>
                            </p>
                        </div>
                        <div class="col-md-5 col-12">
                            <div class="form-outline form-white mb-4">
                                <input type="email" value = "Nhập vào e mail" id="form5Example21" class="form-control" />
                                <label class="form-label"  for="form5Example21"></label>
                            </div>
                        </div>
                        <div class="col-auto">
                            <button type="submit" class="btn btn-outline-light mb-4">
                                Subscribe
                            </button>
                        </div>
                    </div>
                </form>
            </section>
            <section class="mb-4">
                <p>
                    Khu nghỉ dưỡng Furama là cơ sở hàng đầu để khám phá một trong những điểm đến hấp dẫn nhất Châu Á.
                    Chỉ cách Đà Nẵng một quãng lái xe ngắn là bốn Di sản Văn hóa Thế giới được UNESCO công nhận:
                </p>
            </section>
            <section class="">
                <div class="row">
                    <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase">Hướng dẫn di chuyển</h5>
                        <ul class="list-unstyled mb-0">
                            <li>
                                <a href="#!" class="text-white">Cố đô huế</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">Phố cổ hội an</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">Thánh địa mỹ sơn</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">Động phong nha</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase">Thông tin</h5>

                        <ul class="list-unstyled mb-0">
                            <li>
                                <a href="#!" class="text-white">Giá Công Bố</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">Lifestyle Blog</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">Tuyển Dụng</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">Liên hệ</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase">Links</h5>

                        <ul class="list-unstyled mb-0">
                            <li>
                                <a href="#!" class="text-white">Link 1</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">Link 2</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">Link 3</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">Link 4</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase">Liên hệ</h5>

                        <ul class="list-unstyled mb-0">
                            <li>
                                <a href="#!" class="text-white">103 - 105 Vo Nguyen Giap Street, Khue My Ward,
                                    Ngu Hanh Son District, Danang City, Vietnam</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">Tel.: 84-236-3847 333/888 * Fax: 84-236-3847 666</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">Email: reservation@furamavietnam.com * www.furamavietnam.com</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">Sabre-GD 032771, Worldspan- GD DADFU</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
        </div>
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2020 Copyright:
            <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
        </div>
    </footer>
    <script>
        window.onload = function () {
            let mess = document.getElementById("mess").value;
            if (mess != null && mess  !== "") {
                alert(mess);
            }
        }
    </script>
</body>
</html>
