<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- css -->
        <link rel="stylesheet" href="<c:url value='/template/web/css/user.css' />">
        <!-- bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
        <!-- Bootstrap core CSS -->
        <title>Thông tin người dùng</title>
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
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value='/thong-tin?action=infor' />" style="color: white;">Welcome ${USERMODEL.fullName}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value='/dang-xuat?action=logout' />" style="color: white;">Đăng Xuất</a>
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
                <h1>Trang Cá Nhân</h1>
                <div class="line"></div>
                <img src="<c:url value='/template/web/img/img1.png' />" alt="" class="banner" style="width: 1240px;">
            </div>
            <div class="infor">
                <h2>Thông Tin Cá Nhân</h2>
                <div class="line" style="width:600px;"></div>
                <div class="top2">
                    <img src="${USERMODEL.avatar}" alt="" class="avatar">
                    <div class="account">
                        <ul>
                            <li>Tên tài khoản: <span>${USERMODEL.userName}</span></li>
                            <li>Pass Word: <span>${USERMODEL.password}</span></li>
                            <li>ID: <span>${USERMODEL.id}</span></li>
                            <li>Ngày tạo <span>12/4/2020</span></li>
                        </ul>
                    </div>
                    <div class="infor-user">
                        <ul>
                            <li>Họ Và Tên: <span>${USERMODEL.fullName}</span></li>
                            <li>Email: <span>${USERMODEL.email}</span></li>
                            <li>Số Điện Thoại: <span>${USERMODEL.sdt}</span></li>
                            <li>Thay đổi thông tin
                                <a href="<c:url value="/thay-doi-thong-tin?action=change"/>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
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
