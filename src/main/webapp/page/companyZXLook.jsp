<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>爱蕊崎产品宣传网</title>
    <link href="../page/beforePage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../page/beforePage/css/layout.min.css" rel="stylesheet" type="text/css" />
    <style>

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
    <h2>预览资讯</h2>
</div>
<div class="container">

        <div class="row" id="input-4">
            <div class="col-lg-4 col-lg-offset-4">
                <table class="table table-striped">
                   <tr>
                       <th>标题</th>
                       <th>发布时间</th>
                   </tr>

                    <tr>
                        <td>${map.title}</td>
                        <td><fmt:formatDate value="${map.zxdata}" pattern="yyyy-MM-dd "/></td>
                    </tr>

                </table>
                <div class="col-lg-4"></div>
            </div>
        </div>
    </div>
    <div class="row" id="textarea-1">
        <div class="col-lg-10 col-lg-offset-1">
            <textarea class="form-control" name="nr" rows="8" style="background-color:silver;"  id="exampleText" readonly>${map.zxNr}</textarea>
        </div>
    </div>
    <div class="row input-margin">
        <div class="col-lg-2 col-lg-offset-6">
            <a class="btn btn-default" href="${ctx}/gszixun/find" role="button" style="position: relative;top:10px;left: -50px;">返回</a>
        </div>

    </div>
</div>










<script src="../page/beforePage/vendor/jquery.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/jquery-migrate.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
