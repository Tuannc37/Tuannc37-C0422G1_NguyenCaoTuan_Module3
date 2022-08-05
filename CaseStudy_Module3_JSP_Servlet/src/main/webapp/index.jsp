<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <style>
        img.d-block.w-100 {
            height: 500px;
        }
        img.card-img-top.img-fluid {
            height: 150px;
        }
    </style>
</head>
<body>
    <div class="container-fluid menu">
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-dark">
                <div class="collapse navbar-collapse row w-100">
                    <div class="col-md-2">
                        <img src="image/Logo-FURAMA-RESORT.jpg" alt="" height="100px">
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
    <div class="container-fluid header-menu">
        <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="10000">
                    <img src="image/carousel_image_1.png" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">

                    </div>
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img src="image/carousel_image_2.png" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                    </div>
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img src="image/carousel_image_3.png" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">

                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <div class="container-fluid main-one" style="margin-top: 40px">
        <div class="row">
            <div class="col-sm-3 col-xs-4 col-s-12 well mt-5">
                <h4 style="color: #cbbe73;font-family: ui-serif;">KHU NGHỈ DƯỠNG ĐẲNG CẤP THẾ GIỚI, FURAMA ĐÀ NẴNG, NỔI TIẾNG LÀ KHU NGHỈ DƯỠNG ẨM THỰC TẠI VIỆT NAM.</h4>
            </div>
            <div class="col-sm-6 col-xs-4 col-s-12 well">
                <div class="ratio ratio-16x9">
                    <iframe src="https://www.youtube.com/embed/Vvhpm899Eb4" title="YouTube video" allowfullscreen></iframe>
                </div>
            </div>
            <div class="col-sm-3 col-xs-4 col-s-12 well">
                <p>Hướng ra bãi biển Đà Nẵng trải dài cát trắng, Furama Resort Đà Nẵng
                    là cửa ngõ đến với 3 di sản văn hoá thế giới: Hội An (20 phút), Mỹ Sơn
                    (90 phút) và Huế (2 tiếng. 196 phòng hạng sang cùng với 70 căn biệt thự từ
                    hai đến bốn phòng ngủ có hồ bơi riêng đều được trang trí trang nhã, theo phong
                    cách thiết kế truyền thống của Việt Nam và kiến trúc thuộc địa của Pháp, biến Furama
                    thành khu nghỉ dưỡng danh giá nhất tại Việt Nam – vinh dự được đón tiếp nhiều người nổi
                    tiếng, giới hoàng gia, chính khách, ngôi sao điện ảnh và các nhà lãnh đạo kinh doanh quốc tế.
                </p>
            </div>
        </div>
    </div>

    <div class="container-fluid main-tree mt-10" style="margin-top: 60px" >
        <div class="row">
            <div class="col-md-6">
                <div class="row" style="margin: 5px">
                    <div class="col-md-6">
                        <div class="card">
                            <img src="image/1-garden-deluxe-furama-resort-tgroup-travel.jpg"
                                 class="card-img-top img-fluid" alt="...">
                            <div class="card-body">
                                <h5 href="" class="text-decoration-none" style="color: blue">
                                    Đặt phòng
                                </h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card">
                            <img src="image/10953_17080216380054845067.jpg"
                                 class="card-img-top img-fluid" alt="...">
                            <div class="card-body">
                                <h5 href="" class="text-decoration-none" style="color: blue">
                                    Giải trí
                                </h5>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row" style="margin: 5px">
                    <div class="col-md-6">
                        <div class="card">
                            <img src="image/th.jpg"
                                 class="card-img-top img-fluid" alt="...">
                            <div class="card-body">
                                <h5 href=""class="text-decoration-none" style="color: blue">
                                    Ẩm thực
                                </h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card">
                            <img src="image/hinh-anh-thuc-te-furama-resort.jpg"
                                 class="card-img-top img-fluid" alt="...">
                            <div class="card-body">
                                <h5 href="" class="text-decoration-none" style="color: blue">
                                    Cảnh quan
                                </h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 row">
                <div class="ratio ratio-16x9">
                    <iframe src="https://www.youtube.com/embed/VzDrgGaXBjY" title="YouTube video" allowfullscreen></iframe>
                </div>
            </div>
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
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
</body>
</html>