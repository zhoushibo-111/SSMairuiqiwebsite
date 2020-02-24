
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>爱蕊崎产品宣传网站</title>
    <link href="../page/beforePage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../page/beforePage/css/layout.min.css" rel="stylesheet" type="text/css" />
</head>
<style>

    .eerorAdd{
        color: red;
    }
</style>
<body>
<div class="page-header">
    <h2>修改简介</h2>
</div>
<div class="container">
        <form action="${ctx}/companyNew/updJj" method="get">
        <div class="row input-margin">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon2">标题</span>
                    <input type="text" class="form-control" value="${map.bt}" aria-describedby="sizing-addon1" id="useradd1">
                    <span id="s_password" class="eerorAdd"></span>
                </div>
            </div>
            <div class="col-lg-4"></div>
        </div>
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
        <form role="form" action="${ctx}/companyNew/updJj" method="get">
            <div class="form-group">
                <label>简介正文</label>
                <textarea class="form-control"  rows="3" style="height: 300px; border:2px solid #a1a1a1;padding:10px 40px;background:#dddddd;border-radius:10px;">
                    ${map.newnr}
                </textarea>
            </div>
        </form>
        </div>
        </div>
        <div class="row input-margin">
            <div class="col-lg-4"></div>
            <div class="col-lg-2">
                <button class="btn btn-default" type="submit"  id="submitAdd" onclick="update()">确认</button>
            </div>
            <div class="col-lg-1"></div>
            <div class="col-lg-2">
                <a class="btn btn-default" href="${ctx}/companyNew/find" role="button">返回</a>
            </div>
            <div class="col-lg-4"></div>
        </div>
        </form>
    </div>



<script src="../page/beforePage/vendor/jquery.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/jquery-migrate.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script>

    function update() {
        if(confirm("确实要修改公司简介吗？")){
            alert("已经修改！");
        }else {
            alert("已经取消了修改操作");
        }

    }


</script>

</body>
</html>
