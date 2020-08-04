<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta charset="utf-8" />
        <title>Danh sách Truyện</title>

        <link rel="stylesheet" href="<c:url value='/template/admin/assets/css/bootstrap.min.css' />" />
        <link rel="stylesheet" href="<c:url value='/template/admin/font-awesome/4.5.0/css/font-awesome.min.css' />" />
        <link rel="stylesheet" href="<c:url value='/template/admin/assets/css/ace.min.css' />" class="ace-main-stylesheet" id="main-ace-style" />
        <script src="<c:url value='/template/admin/assets/js/ace-extra.min.js' />"></script>
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type='text/javascript' src='<c:url value="/template/admin/js/jquery-2.2.3.min.js" />'></script>
        <script src="<c:url value='/template/admin/assets/js/jquery.2.1.1.min.js' />"></script>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="<c:url value='/template/paging/jquery.twbsPagination.js' />"></script>
    </head>

    <body class="no-skin">
        <div id="navbar" class="navbar navbar-default          ace-save-state">
            <div class="navbar-container ace-save-state" id="navbar-container">
                <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
                    <span class="sr-only">Toggle sidebar</span>

                    <span class="icon-bar"></span>

                    <span class="icon-bar"></span>

                    <span class="icon-bar"></span>
                </button>

                <div class="navbar-header pull-left">
                    <a href="index.html" class="navbar-brand">
                        <small>
                            <i class="fa fa-leaf"></i>
                            Quản Trị Viên
                        </small>
                    </a>
                </div>

                <div class="navbar-buttons navbar-header pull-right" role="navigation">
                    <ul class="nav ace-nav">
                        <li class="light-blue dropdown-modal">
                            <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                                <img class="nav-user-photo" src="assets/images/avatars/user.jpg" alt="Jason's Photo" />
                                <span class="user-info">
                                    <small>Welcome,</small>
                                    ${USERMODEL.fullName}
                                </span>

                                <i class="ace-icon fa fa-caret-down"></i>
                            </a>
                        <li>
                            <a href="<c:url value="/dang-nhap?action=login" />">
                                <i class="ace-icon fa fa-cog"></i> Thoát
                            </a>
                        </li>

                        </li>
                    </ul>
                </div>
            </div><!-- /.navbar-container -->
        </div>

        <div class="main-container ace-save-state" id="main-container">
            <script type="text/javascript">
                try {
                    ace.settings.loadState('main-container');
                } catch (e) {
                }
            </script>

            <div id="sidebar" class="sidebar                  responsive                    ace-save-state">
                <script type="text/javascript">
                    try {
                        ace.settings.loadState('sidebar');
                    } catch (e) {
                    }
                </script>

                <div class="sidebar-shortcuts" id="sidebar-shortcuts">
                    <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
                        <button class="btn btn-success">
                            <i class="ace-icon fa fa-signal"></i>
                        </button>

                        <button class="btn btn-info">
                            <i class="ace-icon fa fa-pencil"></i>
                        </button>

                        <button class="btn btn-warning">
                            <i class="ace-icon fa fa-users"></i>
                        </button>

                        <button class="btn btn-danger">
                            <i class="ace-icon fa fa-cogs"></i>
                        </button>
                    </div>

                    <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                        <span class="btn btn-success"></span>

                        <span class="btn btn-info"></span>

                        <span class="btn btn-warning"></span>

                        <span class="btn btn-danger"></span>
                    </div>
                </div><!-- /.sidebar-shortcuts -->

                <ul class="nav nav-list">
                    <li class="active">
                        <a href="index.html">
                            <i class="menu-icon fa fa-tachometer"></i>
                            <span class="menu-text"> Danh sách bài viết </span>
                        </a>

                        <b class="arrow"></b>
                    </li>
                    <li class="">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-list"></i>
                            <span class="menu-text"> Quản lý Sách </span>

                            <b class="arrow fa fa-angle-down"></b>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">
                            <li class="">
                                <a href="<c:url value="/admin-book?page=1&maxPageItem=2&sortName=title&sortBy=desc" />">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Danh sách Truyện
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="jqgrid.html">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Chỉnh sửa Truyện
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>

                    <li class="">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-pencil-square-o"></i>
                            <span class="menu-text"> Quản lý người dùng </span>

                            <b class="arrow fa fa-angle-down"></b>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">
                            <li class="">
                                <a href="form-elements.html">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Danh Sách người dùng
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>
                    <li class="">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-list"></i>
                            <span class="menu-text"> Quản lý comment </span>

                            <b class="arrow fa fa-angle-down"></b>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">
                            <li class="">
                                <a href="<c:url value="/admin-news?type=list&page=1&maxPageItem=4&sortName=title&sortBy=desc" />">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Danh sách comment
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>


                    <li class="">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-tag"></i>
                            <span class="menu-text"> More Pages </span>

                            <b class="arrow fa fa-angle-down"></b>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">
                            <li class="">
                                <a href="profile.html">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    User Profile
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>

                    <li class="">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-file-o"></i>

                            <span class="menu-text">
                                Other Pages

                                <span class="badge badge-primary">5</span>
                            </span>

                            <b class="arrow fa fa-angle-down"></b>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">
                            <li class="">
                                <a href="faq.html">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    FAQ
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="error-404.html">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Error 404
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="error-500.html">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Error 500
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="grid.html">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Grid
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="blank.html">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Blank Page
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>
                </ul><!-- /.nav-list -->

                <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
                    <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
                </div>
            </div>
            <div class="main-content">
                <form action="<c:url value='/admin-book' />" id="formSubmit" method="get">
                    <div class="main-content-inner">
                        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                            <ul class="breadcrumb">
                                <li>
                                    <i class="ace-icon fa fa-home home-icon"></i>
                                    <a href="#">Home</a>
                                </li>
                                <li class="active">Dashboard</li>
                            </ul><!-- /.breadcrumb -->

                            <div class="nav-search" id="nav-search">
                                <form class="form-search">
                                    <span class="input-icon">
                                        <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
                                        <i class="ace-icon fa fa-search nav-search-icon"></i>
                                    </span>
                                </form>
                            </div><!-- /.nav-search -->
                        </div>

                        <div class="page-content">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="widget-box table-filter">
                                        <div class="table-btn-controls">
                                            <div class="pull-right tableTools-container">
                                                <div class="dt-buttons btn-overlap btn-group">
                                                    <a flag="info"
                                                       class="dt-button buttons-colvis btn btn-white btn-primary btn-bold" data-toggle="tooltip"
                                                       title='Thêm bài viết' href='<c:url value="/admin-new?type=edit"/>'>
                                                        <span>
                                                            <i class="fa fa-plus-circle bigger-110 purple"></i>
                                                        </span>
                                                    </a>
                                                    <button id="btnDelete" type="button"
                                                            class="dt-button buttons-html5 btn btn-white btn-primary btn-bold" data-toggle="tooltip" title='Xóa bài viết'>
                                                        <span>
                                                            <i class="fa fa-trash-o bigger-110 pink"></i>
                                                        </span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th>STT</th>
                                                            <th>Tiêu Đề</th>
                                                            <th>Hình Ảnh</th>
                                                            <th>Thao Tác</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="item" items="${model.listResults}">
                                                            <tr>
                                                                <td>${item.id}</td>
                                                                <td>${item.title}</td>
                                                                <td><img src="${item.thumbnail}" style="width:40px; height: 40px"/></td>
                                                                <td>
                                                                    <c:url var="editURL" value="/admin-new">
                                                                        <c:param name="type" value="edit"/>
                                                                        <c:param name="id" value="${item.id}"/>
                                                                    </c:url>
                                                                    <a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
                                                                       title="Cập nhật bài viết" href='${editURL}'><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                                <ul class="pagination" id="pagination"></ul>
                                                <input type="hidden" value="" id="page" name="page"/>
                                                <input type="hidden" value="" id="maxPageItem" name="maxPageItem"/>
                                                <input type="hidden" value="" id="sortName" name="sortName"/>
                                                <input type="hidden" value="" id="sortBy" name="sortBy"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.page-content -->
                </form>
            </div><!-- /.main-content -->
            <div class="footer">
                <div class="footer-inner">
                    <div class="footer-content">
                        <span class="bigger-120">
                            <span class="blue bolder">Ace</span>
                            Application &copy; 2013-2014
                        </span>

                        &nbsp; &nbsp;
                        <span class="action-buttons">
                            <a href="#">
                                <i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
                            </a>

                            <a href="#">
                                <i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
                            </a>

                            <a href="#">
                                <i class="ace-icon fa fa-rss-square orange bigger-150"></i>
                            </a>
                        </span>
                    </div>
                </div>
            </div>

            <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
                <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
            </a>
        </div><!-- /.main-container -->

        <!-- basic scripts -->

        <!--[if !IE]> -->
        <script src="assets/js/jquery-2.1.4.min.js"></script>

        <!-- <![endif]-->

        <!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
        <script type="text/javascript">
                    if ('ontouchstart' in document.documentElement)
                        document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
        </script>

        <script src="<c:url value='/template/admin/assets/js/bootstrap.min.js' />"></script>
        <script src="<c:url value='/template/admin/assets/js/jquery-ui.custom.min.js' />"></script>
        <script src="<c:url value='/template/admin/assets/js/jquery.ui.touch-punch.min.js' />"></script>
        <script src="<c:url value='/template/admin/assets/js/jquery.easypiechart.min.js' />"></script>
        <script src="<c:url value='/template/admin/assets/js/jquery.sparkline.min.js' />"></script>
        <script src="<c:url value='/template/admin/assets/js/ace-elements.min.js' />"></script>
        <script src="<c:url value='/template/admin/assets/js/ace.min.js' />"></script>
        <script src="<c:url value='/template/admin/assets/js/bootstrap.min.js'/>"></script>

        <!-- page specific plugin scripts -->
        <script src="<c:url value='/template/admin/assets/js/jquery-ui.min.js'/>"></script>

        <script type="text/javascript">
                    var currentPage =${model.page};
                    var totalPage =${model.totalPage};
                    var visiblePages =${model.maxPageItem};
                    var limit = 2;
                    $(function () {
                        window.pagObj = $('#pagination').twbsPagination({
                            totalPages: totalPage,
                            visiblePages: 3,
                            startPage: currentPage,
                            onPageClick: function (event, page) {
                                if (currentPage !== page) {
                                    $('#maxPageItem').val(limit);
                                    $('#page').val(page);
                                    $('#sortName').val('title');
                                    $('#sortBy').val('desc');
                                    $('#formSubmit').submit();
                                }
                            }
                        });
                    });
        </script>
    </body>
</html>

