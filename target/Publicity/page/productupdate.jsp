
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>爱蕊崎产品宣传网站</title>
    <link href="../page/beforePage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../page/beforePage/css/layout.min.css" rel="stylesheet" type="text/css" />
</head>
<style>

    .container  .input-margin-top .input-margin{
        margin-top: 30px;
    }
    .container .input-margin-top{
        margin-top: 100px;
    }
    .btn-margin {
        margin-left: 10px;
    }
</style>
<body>
<div class="page-header" >
    <h2>产品修改</h2>
</div>
<div class="container">
    <form action="${ctx}/product/updProduct" method="post" enctype="multipart/form-data">
    <div class="input-margin-top">
        <div class="row input-margin">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1">品牌名称</span>
                    <input type="text" class="form-control" value="${map.ppname}" aria-describedby="sizing-addon1" id="productadd1">
                    <span id="ppName" class="eerorAdd"></span>
                </div>
            </div>
            <div class="col-lg-4"></div>
        </div>

        <div class="row input-margin">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon2">产品名称</span>
                    <input type="text" class="form-control" value="${map.name}" aria-describedby="sizing-addon1" id="productadd2">
                    <span id="cpName" class="eerorAdd"></span>
                </div>
            </div>
            <div class="col-lg-4"></div>
        </div>
     <!--   上传图片-->
        <div class="container">
            <div class="row">
                <div class="col-lg-4"></div>
                <div class="col-lg-4">

                        <input type="file" name="file" style="position: relative;left: -14px;top:36px;">

                </div>
                <div class="col-lg-4"></div>

            </div>
        </div>
        <%--单选框--%>
        <div class="row input-margin">
            <div class="col-lg-4 col-lg-offset-4"  style="position: relative;left: 40px;top: 15px;">
                <form role="form">
                    <div class="form-group">
                        <label class="checkbox-inline">
                            <input type="radio" id="aut-cate" name="categoryId" value="1">秋冬款
                        </label>
                        <label class="checkbox-inline">
                            <input type="radio"id="spring-cate" name="categoryId" value="2">春秋款
                        </label>
                        <label class="checkbox-inline">
                            <input type="radio" id="sum-cate" name="categoryId" value="3">夏款
                        </label>
                    </div>
                </form>
            </div>

        </div>
        <div class="row input-margin">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon4">面料</span>
                    <input type="text" class="form-control" value="${map.ML}" aria-describedby="sizing-addon1" id="productadd4">
                    <span id=cpml" class="eerorAdd"></span>
                </div>
            </div>
            <div class="col-lg-4"></div>
        </div>
        <div class="row input-margin">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon5">产地</span>
                    <input type="text" class="form-control" value="${map.CD}" aria-describedby="sizing-addon1" id="productadd5">
                    <span id="cpcd" class="eerorAdd"></span>
                </div>
            </div>
            <div class="col-lg-4"></div>
        </div>

        <div class="row input-margin">
            <div class="col-lg-4"></div>
            <div class="col-lg-2">
                <a class="btn btn-default btn-margin" id="submitadd" href="#" role="button" onclick="update()">确认</a>
            </div>
            <div class="col-lg-1"></div>
            <div class="col-lg-2">
                <a class="btn btn-default" href="${ctx}/product/find" role="button">返回</a>
            </div>
            <div class="col-lg-4"></div>
        </div>
    </div>
    </form>
</div>
<script src="../page/beforePage/vendor/jquery.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/jquery-migrate.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script>

    function checkppname() {
        var ppname = document.getElementById("productadd1").value;
        var flag = new RegExp("^([\u4E00-\uFA29]|[\uE7C7-\uE7F3]|[a-zA-Z0-9_]){1,20}$");
        var pp_name = document.getElementById("ppName");
        if (flag) {
            //正确

        } else {
            //失败
            if (ppname == null || ppname == "") {
                pp_name.innerHTML = "请输入品牌名称";
            } else {
                pp_name.innerHTML = "请输入符合要求的品牌名称";
            }

        }
        return flag;
    }
    function checkcpname() {
        var cpname = document.getElementById("productadd2").value;
        var flag = new RegExp("^([\u4E00-\uFA29]|[\uE7C7-\uE7F3]|[a-zA-Z0-9_]){1,20}$");
        var s_cpname = document.getElementById("cpName");
        if (flag){
            //正确

        }else{
            //失败
            if (cpname==null || cpname==""){
                s_cpname.innerHTML="请输入产品名称";
            }else{
                s_cpname.innerHTML="请输入符合要求的产品名称";
            }

        }
        return flag;
    }
    function checkcplb() {
        var cplb = document.getElementById("productadd3").value;
        var flag = cplb.value="秋冬装"&&"春秋装"&&"夏装" ? true : false;
        var s_cplb = document.getElementById("cplb");
        if (flag){
            //正确

        }else{
            //失败
            if (cplb==null || cplb==""){
                s_cplb.innerHTML="请输入产品类别";
            }else{
                s_cplb.innerHTML="无此产品类别";
            }

        }
        return flag;
    }


    function update() {
        if(confirm("确实要添加此账户吗？")){
            alert("已经添加！");
        }else {
            alert("已经取消了添加操作");
        }

    }



</script>
</body>
</html>
