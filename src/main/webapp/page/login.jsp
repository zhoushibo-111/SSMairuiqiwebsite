<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
</head>

<body>
<div class="page login-page">
    <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow">
            <div class="row">
                <!-- Logo & Information Panel-->
                <div class="col-lg-6">
                    <div class="info d-flex align-items-center">
                        <div class="content">
                            <div class="logo">
                                <h1>Login entry</h1>
                            </div>
                            <p>Backstage management login entry of iresak clothing company.</p>
                        </div>
                    </div>
                </div>
                <!-- Form Panel    -->
                <div class="col-lg-6 bg-white">
                    <div class="form d-flex align-items-center">
                        <div class="content">
                            <c:if test="${not empty errMsg}">
                                <span style="color: red;font-size: larger">${errMsg}</span>
                            </c:if>
                            <form method="post" class="form-validate" action="${ctx}/dev/login">
                                <div class="form-group">
                                    <input id="login-username" type="text" name="username" required data-msg="请输入您的用户名" class="input-material">
                                    <label for="login-username" class="label-material">User Name</label>
                                </div>
                                <div class="form-group">
                                    <input id="login-password" type="password" name="password" required data-msg="请输入您的密码" class="input-material">
                                    <label for="login-password" class="label-material">Password</label>
                                </div>
                                <input type="submit" class="btn btn-primary" value="登录">
                                <!-- This should be submit button but I replaced it with <a> for demo purposes-->
                            </form>
                            <a href="index.jsp" class="forgot-pass" onclick="forget()">忘记密码?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyrights text-center">

        <p> <a href="${ctx}/link/findBefore" class="external">返回首页</a>
            <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
        </p>
    </div>
</div>
<script>

</script>
<!-- JavaScript files-->
<script src="../page/behindPage/vendor/jquery/jquery.min.js"></script>
<script src="../page/behindPage/vendor/popper.js/umd/popper.min.js">
</script>
<script src="../page/behindPage/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../page/behindPage/vendor/jquery.cookie/jquery.cookie.js">
</script>
<script src="../page/behindPage/vendor/chart.js/Chart.min.js"></script>
<script src="../page/behindPage/vendor/jquery-validation/jquery.validate.min.js"></script>
<!-- Main File-->
<script src="../page/behindPage/js/front.js"></script>
<script>
    function forget() {
        if(confirm("你确定忘记密码了吗")){
            alert("请联系管理员");
        }else {
            alert("请重新登录");
        }

    }
</script>
</body>

</html>




