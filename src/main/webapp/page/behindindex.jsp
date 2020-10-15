<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>爱蕊崎产品宣传网站</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="../page/behindPage/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="../page/behindPage/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="../page/behindPage/css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../page/behindPage/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="../page/behindPage/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="../page/behindPage/img/favicon.ico">

    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <style type="text/css">
        a:link {
            color: black;
            /*未访问的链接颜色*/
        }

        a:visited {
            color: red;
            /*已访问的链接颜色*/
        }

        a:hover {
            color: blue;
            /*鼠标移动到链接的颜色*/
            text-decoration: underline;
        }

        a:active {
            color: orange;
            /*鼠标点击时的颜色*/
        }

        a {
            text-decoration: none;
            /*去掉下划线*/
        }
        .btn-group{

            margin-right: 10px;
            margin-top: auto;
            width: 30px;
        }
        h1.h4{
            text-shadow: 5px 5px 5px #FF0000;
        }
    </style>
</head>

<body>
<div class="page">
    <!-- Main Navbar-->
    <header class="header">
        <nav class="navbar">
            <!-- Search Box 准备用留言板的，到时候看看用不用-->
            <div class="search-box">
                <button class="dismiss"><i class="icon-close"></i></button>
                <form id="searchForm" action="#" role="search">
                    <input type="search" placeholder="What are you looking for..." class="form-control">
                </form>
            </div>
            <div class="container-fluid">
                <div class="navbar-holder d-flex align-items-center justify-content-between">
                    <!-- Navbar Header-->
                    <div class="navbar-header">
                        <!-- Navbar Brand -->
                        <a href="../page/behindindex.jsp" class="navbar-brand d-none d-sm-inline-block">
                            <div class="brand-text d-none d-lg-inline-block"><span>爱蕊崎</span><strong>后台管理</strong></div>
                            <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div>
                        </a>
                        <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
                    </div>
                    <!-- Navbar Menu -->
                    <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">


                        <ul aria-labelledby="notifications" class="dropdown-menu">
                            <li>
                                <a rel="nofollow" href="#" class="dropdown-item">
                                    <div class="notification">
                                        <div class="notification-content"><i class="fa fa-envelope bg-green"></i>You have 6 new messages </div>
                                        <div class="notification-time"><small>4 minutes ago</small></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a rel="nofollow" href="#" class="dropdown-item">
                                    <div class="notification">
                                        <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                                        <div class="notification-time"><small>4 minutes ago</small></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a rel="nofollow" href="#" class="dropdown-item">
                                    <div class="notification">
                                        <div class="notification-content"><i class="fa fa-upload bg-orange"></i>Server Rebooted</div>
                                        <div class="notification-time"><small>4 minutes ago</small></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a rel="nofollow" href="#" class="dropdown-item">
                                    <div class="notification">
                                        <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                                        <div class="notification-time"><small>10 minutes ago</small></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>view all notifications  </strong></a>
                            </li>
                        </ul>
                        </li>
                        <!-- Messages                        -->
                        <li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o"></i><span class="badge bg-orange badge-corner">${sessionScope.get("count")}</span></a>
                        </li>
                        <!-- Languages dropdown    -->
                        <li class="nav-item dropdown">

                            <ul aria-labelledby="languages" class="dropdown-menu">
                                <li>
                                    <a rel="nofollow" href="#" class="dropdown-item"> <img src="${ctx}/page/behindPage/img/flags/16/DE.png" alt="English" class="mr-2">German</a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="#" class="dropdown-item"> <img src="${ctx}/page/behindPage/img/flags/16/FR.png" alt="English" class="mr-2">French </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Logout    -->
                        <li class="nav-item">
                            <a href="${ctx}/page/login.jsp" class="nav-link logout"> <span class="d-none d-sm-inline">退出登录</span><i class="fa fa-sign-out"></i></a>
                        </li>
                    </ul>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="page-content d-flex align-items-stretch">
        <!-- Side Navbar -->
        <nav class="side-navbar">
            <!-- Sidebar Header-->
            <div class="sidebar-header d-flex align-items-center">
                <div class="avatar"><img src="${ctx}/page/behindPage/img/logo01.png" alt="..." class="img-fluid rounded-circle"></div>
                <div class="title">
                    <h1 class="h4">${sessionScope.get("user").username}</h1>
                    <p>Welcome</p>
                </div>
            </div>
            <!-- Sidebar Navidation Menus--><span class="heading">功能列表</span>
            <ul class="list-unstyled">
                <li class="active">
                    <a href="${ctx}/user/find?id=${sessionScope.get("user").id}"> <i class="icon-home"></i>用户管理 </a>
                </li>
                <li>
                    <a href="${ctx}/product/find"> <i class="icon-grid"></i>产品管理 </a>
                </li>
                <li>
                    <a href="${ctx}/gszixun/find"> <i class="fa fa-bar-chart"></i>公司资讯 </a>
                </li>
                <li>
                    <a href="${ctx}/companyNew/find"> <i class="icon-padnote"></i>公司简介 </a>
                </li>
                <li>
                    <a href="${ctx}/page/Message.jsp"> <i class="icon-padnote"></i>留言板管理 </a>
                </li>
                <li>
                    <a href="${ctx}/link/find"> <i class="icon-padnote"></i>链接管理 </a>
                </li>
                </li>
                <li>
                    <a href="${ctx}/page/login.jsp"> <i class="icon-interface-windows"></i>登录页面 </a>
                </li>
            </ul>
        </nav>
        <div class="content-inner">
            <!-- Page Header-->

            <header class="page-header">

                <h2 class="no-margin-bottom" style="position: relative;left: 25px;">用户管理</h2>
                <div class="btn-group" role="group" aria-label="...">
                    <button type="button" class="btn btn-default" style="position: relative;left:25px;top:5px;">
                        <a href="${ctx}/page/Useradd.jsp">新增用户</a>
                    </button>

                </div>
            </header>


            <table class=" table table-striped" style="text-align: center; margin: auto;">
                <tr>
                    <th>序号</th>
                    <th>用户名</th>
                    <th>密码</th>
                    <th>登录次数</th>
                    <th>注册日期</th>
                    <th>操作</th>
                </tr>
                <c:forEach var="obj" items="${pageInfo.list}" varStatus="status">
                <tr>
                    <td>
                        ${status.count}
                    </td>
                    <td>
                        ${obj.id}
                    </td>
                    <td>
                            ${obj.password}
                    </td>
                    <td>
                            ${obj.loginfrequency}
                    </td>
                    <td>
                        <fmt:formatDate value="${obj.logintime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                    </td>
                    <td>
                        <a href="${ctx}/user/findbyid?id=${obj.id}">修改</a>
                        <a href="${ctx}/user/delUser?id=${obj.id}" onclick="del()">删除</a>
                    </td>
                </tr>
                </c:forEach>
            </table>
<%--            --%>
            <div class="box-tools pull-right">
                <ul class="pagination">
                    <li><a href="javaScript:gotoPage('1')" aria-label="Previous">首页</a></li>
                    <li><a href="javaScript:gotoPage('${pageInfo.pageNum-1}')">上一页</a></li>

                    <c:forEach begin="1" end="${pageInfo.pages}" var="i" step="1" >
                        <li class="${i==pageInfo.pageNum ? 'active' : ''}">
                            <a href="javaScript:gotoPage('${i}')">${i}</a>
                        </li>
                        &nbsp;
                    </c:forEach>

                    <li><a href="javaScript:gotoPage('${pageInfo.pageNum+1}')">下一页</a></li>
                    <li><a href="javaScript:gotoPage('${pageInfo.total}')" aria-label="Next">尾页</a></li>
                </ul>
            </div>
            <!-- Page Footer-->
            <footer class="main-footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6">

                        </div>
                        <div class="col-sm-6 text-right">
                            <p></p>
                            <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>


</div>
<!-- JavaScript files-->
<script src="../page/behindPage/vendor/jquery/jquery.min.js"></script>
<script src="../page/behindPage/vendor/popper.js/umd/popper.min.js">
</script>
<script src="../page/behindPage/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../page/behindPage/vendor/jquery.cookie/jquery.cookie.js">
</script>
<script src="../page/behindPage/vendor/chart.js/Chart.min.js"></script>
<script src="../page/behindPage/vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="../page/behindPage/js/charts-home.js"></script>
<!-- Main File-->
<script src="../page/behindPage/js/front.js"></script>
<script>
    function gotoPage(pageNum) {
        // 获取每页显示的页码.
        //var numPerPageSelectVal = $("#numPerPageSelect").val();
        var numPerPageSelectVal = ${pageInfo.pageSize};

        // 判断页码数 是否在总页码数的范围!
        if (pageNum>=1 && pageNum<= ${pageInfo.total}){
            // 跳转到指定的页码.
            location.href = "${pageContext.request.contextPath}/user/find?id=1/pageNum="+pageNum+"&pageSize="+pageSize;
        }else {
            alert("已经到头了!")
        }
    }
    function del() {
        if(confirm("确实要删除吗？")){
            alert("已经删除！");
        }else {
            alert("已经取消了删除操作");
        }

    }
</script>

</body>

</html>