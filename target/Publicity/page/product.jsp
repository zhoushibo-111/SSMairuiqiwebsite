<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>爱蕊崎产品宣传网站</title>
    <link href="../page/beforePage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../page/beforePage/css/layout.min.css" rel="stylesheet" type="text/css" />
    <style>
        .nav-pills {
            background-color: black;
        }

        div.thumbnail {
            cursor: pointer;
            transition: 0.3s;
            box-shadow: 10px 10px 10px rgba(0, 0, 0, .5);
            /*考虑浏览器兼容性*/
            -moz-box-shadow: 10px 10px 10px rgba(0, 0, 0, .5);
            -webkit-box-shadow: 10px 10px 10px rgba(0, 0, 0, .5);
        }
        /*.input-group .form-control{*/
        /*    border:2px solid #a1a1a1;*/
        /*    padding:10px 40px;*/
        /*    background:#dddddd;*/
        /*}*/
    </style>
</head>

<body>
<!--页头-->
<ul class="nav nav-pills">
    <li role="presentation"><a href="${ctx}/link/findBefore">首页</a></li>
    <li role="presentation"><a href="${ctx}/product/productfindall">产品信息</a></li>
    <li role="presentation"><a href="${ctx}/gszixun/findBefore">公司咨讯</a></li>
    <li role="presentation"><a href="${ctx}/companyNew/pageFind">公司简介</a></li>

</ul>
<!--搜索框-->
<div class="container">
<div class="row">
    <form class="form-inline" name="findProdnct" action="${ctx}/product/productfind">
        <div class="form-group">
<%--            <label class="sr-only" for="exampleInputAmount">Amount (in dollars)</label>--%>
            <div class="input-group">
                <input type="text" class="form-control" name="name" id="exampleInputAmount" placeholder="请输入...">
            </div>
        </div>
        <button type="submit" class="btn btn-primary">搜索</button>
    </form>
    </div>
</div>


    <c:forEach items="${productList}" var="list">
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="${ctx}/page/${list.productimg}" alt="...">
                <div class="caption">
                    <h3>${list.ppname}</h3>
                    <p style="font-size: medium;"><b>${list.name}</b></p>
                    <p>${list.ML}</p>
                    <p>${list.CD}</p>
                </div>
            </div>
        </div>
    </c:forEach>





<!--分割线-->
<%--<div style="position:absolute; top:30px; right:0px;">--%>
<%--<nav aria-label="Page navigation" style="float: right; margin-right: 40px;">--%>
<%--    <ul class="pagination">--%>
<%--        <li>--%>
<%--            <a href="#" aria-label="Previous">--%>
<%--                <span aria-hidden="true">&laquo;</span>--%>
<%--            </a>--%>
<%--        </li>--%>
<%--        <li><a href="#">1</a></li>--%>
<%--        <li><a href="#">2</a></li>--%>
<%--        <li><a href="#">3</a></li>--%>
<%--        <li><a href="#">4</a></li>--%>
<%--        <li><a href="#">5</a></li>--%>
<%--        <li>--%>
<%--            <a href="#" aria-label="Next">--%>
<%--                <span aria-hidden="true">&raquo;</span>--%>
<%--            </a>--%>
<%--        </li>--%>
<%--    </ul>--%>
<%--</nav>--%>
</div>
<script src="beforePage/vendor/jquery.min.js" type="text/javascript"></script>
<script src="beforePage/vendor/jquery-migrate.min.js" type="text/javascript"></script>
<script src="beforePage/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

</body>

</html>
