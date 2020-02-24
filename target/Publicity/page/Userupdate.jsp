
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>爱蕊崎产品宣传网站</title>
    <link href="../page/beforePage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../page/beforePage/css/layout.min.css" rel="stylesheet" type="text/css" />
</head>
<style>

    .container  .input-margin-top .input-margin{
        margin-top: 20px;
    }
    .container .input-margin-top{
        margin-top: 200px;
    }
    .btn-margin {
        margin-left: 10px;
    }
    .eerorAdd{
        color: red;
    }
</style>
<body>
<div class="page-header">
    <h2>修改用户</h2>
</div>
<div class="container">

    <div class="input-margin-top">
        <div class="row input-margin">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1">用户名</span>
                    <input type="text" class="form-control" value="${map.username}" aria-describedby="sizing-addon1" id="useradd">
                    <span id="s_username" class="eerorAdd"></span>
                </div>
            </div>
            <div class="col-lg-4"></div>
        </div>

        <div class="row input-margin">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon2">密码</span>
                    <input type="text" class="form-control" value="${map.password}"  aria-describedby="sizing-addon1" id="useradd1">
                    <span id="s_password" class="eerorAdd"></span>
                </div>
            </div>
            <div class="col-lg-4"></div>
        </div>

        <div class="row input-margin">
            <div class="col-lg-4"></div>
            <div class="col-lg-2">
                <button class="btn btn-default" type="submit" href=""  id="submitUpdate" >确认</button>
            </div>
            <div class="col-lg-1"></div>
            <div class="col-lg-2">
                <a class="btn btn-default" href="${ctx}/user/find" role="button">返回</a>
            </div>
            <div class="col-lg-4"></div>
        </div>
    </div>

</div>

<script src="../page/beforePage/vendor/jquery.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/jquery-migrate.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script>

    document.getElementById("submitUpdate").onclick=function () {
        if (checkUsername() && checkPassword()){
            add();
            $.ajax({
                type : "post",
                url : "${ctx}/user/updateUser",
                contentType:"application/x-www-form-urlencoded;charset=utf-8",
                data : {
                    username : document.getElementById("useradd").value,
                    password : document.getElementById("useradd1").value
                },
                success : function (res) {
                    alert("修改成功");
                }

            })
        }
    }
    function checkUsername() {
        var username = document.getElementById("useradd").value;
        var flag = username.length <= 4 ? true : false;
        var s_username = document.getElementById("s_username");
        if (flag) {
            //正确

        } else {
            //失败
            if (username == null || username == "") {
                s_username.innerHTML = "请输入用户名";
            } else {
                s_username.innerHTML = "请输入正确的用户名";
            }

        }
        return flag;
    }
    function checkPassword() {
        var password = document.getElementById("useradd1").value;
        var flag = password.length <= 12 ? true : false;
        var s_password = document.getElementById("s_password");
        if (flag){
            //正确

        }else{
            //失败
            if (password==null || password==""){
                s_password.innerHTML="请输入密码";
            }else{
                s_password.innerHTML="密码不符合要求";
            }

        }
        return flag;
    }

    function add() {
        if(confirm("确实要修改此账户吗？")){
            alert("已经修改！");
        }else {
            alert("已经取消了修改操作");
        }

    }


</script>

</body>
</html>
