<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- css -->
        <link href="<c:url value='/template/web/css/home.css" rel="stylesheet' />">
        <!-- bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
        <!-- Bootstrap core CSS -->
        <title>WORlD BOOK</title>
    </head>
    <body>
        <header>
            <div class="package">
                <nav class="navbar navbar-expand-sm bg-dark navbar-dark" style="margin-left:0px;">
                    <!-- Brand -->
                    <a class="navbar-brand" href="#">
                        <img src="<c:url value='/template/web/img/logo.png'/>" alt="Logo" style="width:150px;">
                    </a>

                    <!-- Links -->
                    <ul class="navbar-nav">
                        <c:if test="${not empty USERMODEL}">
                            <!--                            <li class="nav-item">
                                                            <a class="nav-link" href="<c:url value='/thong-tin?action=infor' />" style="color: white;">Welcome ${USERMODEL.fullName}</a>
                                                        </li>-->
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" style="color: white;">
                                     ${USERMODEL.fullName}
                                </a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">Truyện cười</a>
                                    <a class="dropdown-item" href="#">Truyện trinh thám</a>
                                    <a class="dropdown-item" href="#">Truyện ngắn</a>
                                    <a class="dropdown-item" href="#">Tiểu thuyết tình yêu</a>
                                    <a class="dropdown-item" href="#">Truyện ngắn</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<c:url value='/dang-xuat?action=logout' />" style="color: white;">Đăng Xuất</a>
                            </li>
                        </c:if>
                        <c:if test="${empty USERMODEL}">
                            <li class="nav-item">
                                <a class="nav-link" href="<c:url value='/dang-nhap?action=login' />" style="color: white;"> <i class="fa fa-user" aria-hidden="true"></i> Đăng Nhập</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<c:url value='/dang-ky?action=register' />" style="color: white;"><i class="fa fa-user-plus" aria-hidden="true"></i> Đăng Ký</a>
                            </li>
                        </c:if>


                        <!-- Dropdown -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" style="color: white;">
                                <i class="fa fa-bars" aria-hidden="true"></i> Danh Mục
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">Truyện cười</a>
                                <a class="dropdown-item" href="#">Truyện trinh thám</a>
                                <a class="dropdown-item" href="#">Truyện ngắn</a>
                                <a class="dropdown-item" href="#">Tiểu thuyết tình yêu</a>
                                <a class="dropdown-item" href="#">Truyện ngắn</a>
                            </div>
                        </li>
                    </ul>
                </nav>
                <form class="form-inline" action="" style="margin-right:23px;">
                    <input class="form-control mr-sm-2 " type="text " placeholder="Search ">
                    <button class="btn btn-success " type="submit ">Search</button>
                </form>
            </div>
        </header>
        <!-- end header -->
        <div class="banner ">
            <div class="package ">
                <div id="mycarousel" class="carousel slide" data-ride="carousel">

                    <!--Cho hiện thị chỉ số nếu muốn-->
                    <ol class="carousel-indicators">
                        <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#mycarousel" data-slide-to="1" class=""></li>
                        <li data-target="#mycarousel" data-slide-to="2" class=""></li>
                    </ol>
                    <!--Hết tạo chỉ số-->

                    <!--Các slide bên trong carousel-inner-->
                    <div class="carousel-inner">

                        <!--Slide 1 thiết lập hiện thị đầu tiên .active-->
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="<c:url value='/template/web/img/slide1.png'/>">
                        </div>

                        <!--Slide 2-->
                        <div class="carousel-item">
                            <img class="d-block w-100" src="<c:url value='/template/web/img/slide2.jpg'/>">
                        </div>
                        <!--Slide 3-->
                        <div class="carousel-item">
                            <img class="d-block w-100" src="<c:url value='/template/web/img/slide3.png'/>">
                        </div>
                    </div>



                    <!--Cho thêm khiển chuyển slide trước, sau nếu muốn-->
                    <a class="carousel-control-prev" href="#mycarousel" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span></a>
                    <a class="carousel-control-next" href="#mycarousel" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
                    <!--Hết tạo điều khiển chuyển Slide-->

                </div>
            </div>
        </div>
        <!-- end-banner -->
        <div class="container ">
            <div class="name">
                <div class="package">
                    <span class="left">
                        Tiểu Thuyết Tình Yêu
                    </span>
                    <div class="right">
                        <a href="" style="text-decoration: none; margin-right:10px;">
                            <span>Xem tất cả  <i class="fa fa-arrow-right" aria-hidden="true"></i></span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="line"></div>
            <!-- end-name -->
            <div class="product">
                <div class="list-book">
                    <div class="row">
                        <div class="book1">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book1.jpg'/>" alt="">
                            </a>
                            <div class="deep">
                                <a href="" class="book-icon">
                                    <img src="img/book-icon.png" alt="">
                                </a>
                                <a href="detail.html" class="infor">Chi Tiết</a>
                            </div>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="author.html" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book1">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book1.jpg'/>" alt="">
                            </a>
                            <div class="deep">
                                <a href="" class="book-icon">
                                    <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                                </a>
                                <a href="" class="infor">Chi Tiết</a>
                            </div>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book1">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book1.jpg'/>" alt="">
                            </a>
                            <div class="deep">
                                <a href="" class="book-icon">
                                    <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                                </a>
                                <a href="" class="infor">Chi Tiết</a>
                            </div>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book1">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book1.jpg'/>" alt="">
                            </a>
                            <div class="deep">
                                <a href="" class="book-icon">
                                    <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                                </a>
                                <a href="" class="infor">Chi Tiết</a>
                            </div>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book1">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book1.jpg'/>" alt="">
                            </a>
                            <div class="deep">
                                <a href="" class="book-icon">
                                    <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                                </a>
                                <a href="" class="infor">Chi Tiết</a>
                            </div>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end product -->
            <div class="name">
                <div class="package">
                    <span class="left">
                        Tiểu Thuyết Trinh Thám
                    </span>
                    <div class="right">
                        <a href="" style="text-decoration: none; margin-right:10px;">
                            <span>Xem tất cả <i class="fa fa-arrow-right" aria-hidden="true"></i></span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="line"></div>
            <!-- end-name -->
            <div class="product">
                <div class="list-book">
                    <div class="row">
                        <div class="book1">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book1.jpg'/>" alt="">
                            </a>
                            <div class="deep">
                                <a href="" class="book-icon">
                                    <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                                </a>
                                <a href="" class="infor">Chi Tiết</a>
                            </div>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book1">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book1.jpg'/>" alt="">
                            </a>
                            <div class="deep">
                                <a href="" class="book-icon">
                                    <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                                </a>
                                <a href="" class="infor">Chi Tiết</a>
                            </div>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book1">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book1.jpg'/>" alt="">
                            </a>
                            <div class="deep">
                                <a href="" class="book-icon">
                                    <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                                </a>
                                <a href="" class="infor">Chi Tiết</a>
                            </div>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book1">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book1.jpg'/>" alt="">
                            </a>
                            <div class="deep">
                                <a href="" class="book-icon">
                                    <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                                </a>
                                <a href="" class="infor">Chi Tiết</a>
                            </div>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book1">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book1.jpg'/>" alt="">
                            </a>
                            <div class="deep">
                                <a href="" class="book-icon">
                                    <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                                </a>
                                <a href="" class="infor">Chi Tiết</a>
                            </div>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end product -->
            <div class="name">
                <div class="package">
                    <span class="left">
                        Truyện Ngắn
                    </span>
                    <div class="right">
                        <a href="" style="text-decoration: none; margin-right:10px;">
                            <span>Xem tất cả  <i class="fa fa-arrow-right" aria-hidden="true"></i></span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="line"></div>
            <!-- end-name -->
            <div class="product">
                <div class="list-book">
                    <div class="row">
                        <div class="book1">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book1.jpg'/>" alt="">
                            </a>
                            <div class="deep">
                                <a href="" class="book-icon">
                                    <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                                </a>
                                <a href="" class="infor">Chi Tiết</a>
                            </div>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book1">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book1.jpg'/>" alt="">
                            </a>
                            <div class="deep">
                                <a href="" class="book-icon">
                                    <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                                </a>
                                <a href="" class="infor">Chi Tiết</a>
                            </div>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book1">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book1.jpg'/>" alt="">
                            </a>
                            <div class="deep">
                                <a href="" class="book-icon">
                                    <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                                </a>
                                <a href="" class="infor">Chi Tiết</a>
                            </div>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book1">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book1.jpg'/>" alt="">
                            </a>
                            <div class="deep">
                                <a href="" class="book-icon">
                                    <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                                </a>
                                <a href="" class="infor">Chi Tiết</a>
                            </div>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book1">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book1.jpg'/>" alt="">
                            </a>
                            <div class="deep">
                                <a href="" class="book-icon">
                                    <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                                </a>
                                <a href="" class="infor">Chi Tiết</a>
                            </div>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end product -->
            <div class="new-book">
                <div class="package">
                    <span class="left">
                        Truyện Mới Cập Nhật
                    </span>
                    <div class="right">
                        <a href="" style="text-decoration: none; margin-right:10px;">
                            <span>Xem tất cả</span>
                            <i class="fa fa-arrow-right" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
                <div class="line" style="margin-left:0px"></div>
                <div class="product1">
                    <div class="list-book1">
                        <div class="book2">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book2.jpg'/>" alt="">
                            </a>
                            <a href="" class="book-icon">
                                <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                            </a>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book2">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book2.jpg'/>" alt="">
                            </a>
                            <a href="" class="book-icon">
                                <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                            </a>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book2">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book2.jpg'/>" alt="">
                            </a>
                            <a href="" class="book-icon">
                                <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                            </a>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book2">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book2.jpg'/>" alt="">
                            </a>
                            <a href="" class="book-icon">
                                <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                            </a>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book2">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book2.jpg'/>" alt="">
                            </a>
                            <a href="" class="book-icon">
                                <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                            </a>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book2">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book2.jpg'/>" alt="">
                            </a>
                            <a href="" class="book-icon">
                                <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                            </a>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end -->
            <div class="new-book">
                <div class="package">
                    <span class="left">
                        Truyện Mới Cập Nhật
                    </span>
                    <div class="right">
                        <a href="" style="text-decoration: none; margin-right:10px;">
                            <span>Xem tất cả</span>
                            <i class="fa fa-arrow-right" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
                <div class="line" style="margin-left:0px"></div>
                <div class="product1">
                    <div class="list-book1">
                        <div class="book2">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book2.jpg'/>" alt="">
                            </a>
                            <a href="" class="book-icon">
                                <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                            </a>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book2">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book2.jpg'/>" alt="">
                            </a>
                            <a href="" class="book-icon">
                                <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                            </a>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book2">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book2.jpg'/>" alt="">
                            </a>
                            <a href="" class="book-icon">
                                <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                            </a>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book2">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book2.jpg'/>" alt="">
                            </a>
                            <a href="" class="book-icon">
                                <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                            </a>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book2">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book2.jpg'/>" alt="">
                            </a>
                            <a href="" class="book-icon">
                                <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                            </a>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                        <div class="book2">
                            <a href="" class="thumbail">
                                <img src="<c:url value='/template/web/img/book2.jpg'/>" alt="">
                            </a>
                            <a href="" class="book-icon">
                                <img src="<c:url value='/template/web/img/book-icon.png'/>" alt="">
                            </a>
                            <div class="caption">
                                <a href="" class="title">Tình yêu nơi đâu</a>
                                <br>
                                <a href="" class="author">Bộ Lan Vi</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end -->
        </div>
        <!-- /.container -->
        <div class="footer">
            <div class="package">
                <div class="top1">
                    <strong>EBOOK.VN</strong>
                    <ul>
                        <li><a href="">Giới thiệu về EBOOK</a></li>
                        <li><a href="">Điều khoản giao dịch</a></li>
                        <li><a href="">Bảo mật thông tin khách hàng</a></li>
                        <li><a href="">Chính sách kinh doanh</a></li>
                        <li><a href="">Thông tin liên hệ</a></li>
                    </ul>
                </div>
                <div class="top1">
                    <strong>Danh mục tiêu biểu</strong>
                    <ul>
                        <li><a href="">Truyện trinh thám</a></li>
                        <li><a href="">Truyện ngắn</a></li>
                        <li><a href="">Tiểu thuyết tình yêu</a></li>
                        <li><a href="">Truyện ma</a></li>
                        <li><a href="">Tiểu thuyết ngắn</a></li>
                    </ul>
                </div>
                <div class="top1">
                    <strong>hỗ trợ người dùng</strong>
                    <ul>
                        <li><a href="mailto:ngonam21021999@gmail.com">Email:ngonam21021999@gmail.com</a></li>
                        <li><a href="tel:0968 588 491">Hotline: 0968 588 491</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
