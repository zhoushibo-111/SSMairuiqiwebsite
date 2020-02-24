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
        .media-object {
            width: 100px;
            height: 100px;
            margin-left: 30px;
            margin-top: 20px;
        }

        .media-heading {
            margin-left: 30px;
            margin-top: 20px;
        }

        .nav-pills {
            background-color: black;
        }
    </style>
</head>

<body>
<ul class="nav nav-pills">
    <li role="presentation"><a href="${ctx}/link/findBefore">首页</a></li>
    <li role="presentation"><a href="${ctx}/product/productfindall">产品信息</a></li>
    <li role="presentation"><a href="${ctx}/gszixun/findBefore">公司咨讯</a></li>
    <li role="presentation"><a href="${ctx}/companyNew/pageFind">公司简介</a></li>

</ul>
<c:forEach items="${companyList}" var="list">
<div class="media-1">
    <div class="media-left media-middle">
        <a href="#">
            <img class="media-object" src="../page/beforePage/img/product-img/new-1.jfif" alt="...">
        </a>
    </div>
    <div class="media-body">
        <h4 class="media-heading">${list.title}</h4>
        <a href="">${list.zxNr}</a>
    </div>
</div>
</c:forEach>
<%--<nav aria-label="Page navigation" style="position: absolute;bottom: 5px;left: 5px;">--%>
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


<!--模态框 -->
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
           <br>
           <br>
           <br>
           <br>
           <br>
           <br>
        </div>
    </div>
</div>







<script src="../page/beforePage/vendor/jquery.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/jquery-migrate.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>

</html>
