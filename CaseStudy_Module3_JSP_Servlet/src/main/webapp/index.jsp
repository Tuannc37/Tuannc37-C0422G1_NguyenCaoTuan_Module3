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
        iframe {
            border-radius: 12px;
        }
    </style>
</head>
<body>
    <%@include file="/view/include/header.jsp"%>
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
                                    <h5 href="" class="text-decoration-none text-center" style="color: blue">
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
                                    <h5 href="" class="text-decoration-none text-center" style="color: blue">
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
                                    <h5 href=""class="text-decoration-none text-center" style="color: blue">
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
                                    <h5 href="" class="text-decoration-none text-center" style="color: blue">
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

    </div>
    <%@include file="/view/include/footer.jsp"%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
</body>
</html>