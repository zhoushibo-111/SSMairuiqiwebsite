<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>爱蕊崎产品宣传网</title>
    <link href="../page/beforePage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../page/beforePage/css/layout.min.css" rel="stylesheet" type="text/css" />
    <style>
        .container #input-3{
            margin-top: 100px;
        }
        .container #input-4{
            margin-top: 100px;
        }
        #textarea-1{
            margin-top: 30px;
        }
        #textarea-1 .form-control{
            height: 300px;
            border:2px solid #a1a1a1;
            padding:10px 40px;
            background:#dddddd;
            border-radius:25px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>修改资讯</h2>
</div>
<div class="container">
    <form action="/gszixun/updZX" method="post">
    <div class="row" id="input-3">
        <div class="col-lg-4 col-lg-offset-4" >
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon1">标题&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
    <input type="text" class="form-control" value="${map.title}" aria-describedby="sizing-addon1" id="updateZX1">
    <span id="s_title" class="eerorAdd"></span>
</div>
</div>

        <div class="row" id="input-4">
        <div class="col-lg-4 col-lg-offset-4">
            <div class="input-group input-group-lg">
                <span class="input-group-addon" id="sizing-addon2">发布时间</span>
                <input type="text" class="form-control" value="<fmt:formatDate value="${map.zxdata}" pattern="yyyy-MM-dd "/>" aria-describedby="sizing-addon1" id="updateZX2">

            </div>
            <div class="col-lg-4"></div>
        </div>
        </div>
    </div>
    <div class="row" id="textarea-1">
        <div class="col-lg-10 col-lg-offset-1">
            <textarea class="form-control" name="nr" rows="8" style="background-color:silver;"  id="exampleText">${map.zxNr}</textarea>
        </div>
    </div>
    <div class="row input-margin">
        <div class="col-lg-4"></div>
        <div class="col-lg-2">
            <button class="btn btn-default" type="submit"  id="submitUpdate" href="" style="position: relative;top:10px;" onclick="update()">确认</button>
        </div>
        <div class="col-lg-1"></div>
        <div class="col-lg-2">
            <a class="btn btn-default" href="${ctx}/gszixun/find" role="button" style="position: relative;top:10px;">返回</a>
        </div>
        <div class="col-lg-4"></div>
    </div>
    </form>
</div>










<script src="../page/beforePage/vendor/jquery.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/jquery-migrate.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script>

    function checkTitle() {
        var title = document.getElementById("updateZX1").value;
        var flag = title.length <= 4 ? true : false;
        var s_title = document.getElementById("s_title");
        if (flag) {
            //正确

        } else {
            //失败
            if (title == null || title == "") {
                s_title.innerHTML = "请输入用户名";
            } else {
                s_title.innerHTML = "请输入正确的用户名";
            }

        }
        return flag;
    }
    function checkZxNr() {
        var zxnr = document.getElementById("useradd").value;
        var flag = zxnr.length <= 4 ? true : false;
        var s_zxnr = document.getElementById("s_zxnr");
        if (flag) {
            //正确

        } else {
            //失败
            if (zxnr == null || zxnr == "") {
                s_zxnr.innerHTML = "请输入用户名";
            } else {
                s_zxnr.innerHTML = "请输入正确的用户名";
            }

        }
        return flag;
    }
    function update() {
        if(confirm("确实要修改此账户吗？")){
            alert("已经修改！");
        }else {
            alert("已经取消了修改操作");
        }

    }
</script>

</body>
</html>
