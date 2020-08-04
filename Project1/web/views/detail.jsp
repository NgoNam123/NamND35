<%-- 
    Document   : detail
    Created on : May 29, 2020, 11:38:34 PM
    Author     : Ngô Đức Nam
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- css -->
    <link rel="stylesheet" href="<c:url value='/template/web/css/detail.css'/>">
    <!-- bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <!-- Bootstrap core CSS -->
    <title>Thông tin về sách</title>
</head>

<body>
    <header>
        <div class="package">
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark" style="margin-left:0px;">
                <!-- Brand -->
                <a class="navbar-brand" href="#">
                    <img src="<c:url value='/template/web/img/logo.png' />" alt="Logo" style="width:150px;">
                </a>

                <!-- Links -->
                <ul class="navbar-nav">
                    <c:if test="${not empty USERMODEL}">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" style="color: white;">
                                Welcome ${USERMODEL.fullName}
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="<c:url value='/thong-tin?action=infor' />">User Profile</a>
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
    <div class="container ">
        <div class="package">
            <div class="top">
                <h1>Thông tin sách</h1>
                <div class="line"></div>
            </div>
            <div class="infor">
                <img src="${BOOKMODEL.thumbnail}" alt="" class="avatar" style="width:200px; height: 300px">
                <ul class="infor1">
                    <li>
                        <h2>${BOOKMODEL.title}</h2>
                    </li>
                    <li>Tác Giả:
                        <a href="author.html">Bộ Lan Vi</a>
                    </li>
                    <li>Thể Loại:
                        <a href="">${BOOKMODEL.title}</a>
                    </li>
                    <li>Ngày Cập Nhật: <span>12/4/2019</span></li>
                    <li style="width: 74px; height: 25px; background-color: rgb(111, 184, 3);">
                        <a href="<c:url value="/read-book?action=read&id=${BOOKMODEL.id}"/>" style="margin-left: 6px; color: white;">Đọc Sách</a>
                    </li>
                    <li>Tóm Tắt: <span style="font-style:italic; ">${BOOKMODEL.shortDescription}</span></li>
                </ul>
            </div>
        </div>
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
<!-- Bootstrap core JavaScript -->

</html>
