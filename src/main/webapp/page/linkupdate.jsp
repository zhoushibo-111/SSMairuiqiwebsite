
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

    .eerorAdd{
        color: red;
    }
</style>
<body>
<div class="page-header">
    <h2>修改链接</h2>
</div>
<div class="container">

    <div class="input-margin-top">
        <div class="row input-margin">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1">链接名称</span>
                    <input type="text" class="form-control" value="${map.text}" aria-describedby="sizing-addon1" id="useradd">
                    <span id="s_username" class="eerorAdd"></span>
                </div>
            </div>
            <div class="col-lg-4"></div>
        </div>

        <div class="row input-margin">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon2">链接名</span>
                    <input type="text" class="form-control" value="${map.link}" aria-describedby="sizing-addon1" id="useradd1">
                    <span id="s_password" class="eerorAdd"></span>
                </div>
            </div>
            <div class="col-lg-4"></div>
        </div>

        <div class="row input-margin">
            <div class="col-lg-4"></div>
            <div class="col-lg-2">
                <button class="btn btn-default" type="submit" href="${ctx}/link/findbyid"  id="submitAdd" >确认</button>
            </div>
            <div class="col-lg-1"></div>
            <div class="col-lg-2">
                <a class="btn btn-default" href="${ctx}/link/find" role="button">返回</a>
            </div>
            <div class="col-lg-4"></div>
        </div>
    </div>

</div>

<script src="../page/beforePage/vendor/jquery.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/jquery-migrate.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script>

    document.getElementById("submitAdd").onclick=function () {
        if (checkLjname() && checkLj()){
            add();
            $.ajax({
                type : "post",
                url : "${ctx}/link/updLink",
                contentType:"application/x-www-form-urlencoded;charset=utf-8",
                data : {
                    text : document.getElementById("useradd").value,
                    link : document.getElementById("useradd1").value,
                    id : ${map.id}
                },
                success : function (res) {
                    alert("修改成功");
                }

            })
        }
    }
    function checkLjname() {
        var ljname = document.getElementById("useradd").value;
        var flag = ljname.length <= 5 ? true : false;
        var s_username = document.getElementById("s_username");
        if (flag) {
            //正确

        } else {
            //失败
            if (username == null || username == "") {
                s_username.innerHTML = "请输入链接名";
            } else {
                s_username.innerHTML = "链接名称不能超过5个字";
            }

        }
        return flag;
    }
    function checkLj() {
        var lj = document.getElementById("useradd1").value;
        var flag = lj.length <= 30 ? true : false;
        var s_password = document.getElementById("s_password");
        if (flag){
            //正确

        }else{
            //失败
            if (password==null || password==""){
                s_password.innerHTML="请输入链接";
            }else{
                s_password.innerHTML="链接格式不符合要求";
            }

        }
        return flag;
    }

    function add() {
        if(confirm("确实要添加此账户吗？")){
            alert("已经添加！");
        }else {
            alert("已经取消了添加操作");
        }

    }


</script>

</body>
</html>
