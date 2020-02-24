
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>爱蕊崎产品宣传网站</title>

    <link href="../page/beforePage/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css" />
    <link href="../page/beforePage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />


    <link href="../page/beforePage/css/animate.css" rel="stylesheet">
    <link href="../page/beforePage/vendor/swiper/css/swiper.min.css" rel="stylesheet" type="text/css" />
    <link href="../page/beforePage/vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css" />

    <!-- THEME STYLES -->
    <link href="../page/beforePage/css/layout.min.css" rel="stylesheet" type="text/css" />
    <style>
        .nav-pills {
            background-color: black;
        }

        .div thumbnail {
            float: left;
        }

        .div well {
            float: left;
        }

        h2.title-1 {
            text-align: center;
        }

        p.span-1 {
            text-align: center;
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
<div class="container-fluid">
    <div class="row" style="margin-top: 10px; ">
        <div class="col-sm-6 col-md-3">
            <div class="thumbnail">
                <img src="${ctx}/page/beforePage/img/001.jpg" alt="...">
                <div class="caption">
                    <h3>大连爱蕊崎贸易有限公司</h3>
                    <p>法人代表：陈妍<br> 注册资本：100.000000
                        <br> 公司类型：有限责任公司
                        <br> 企业类型：品牌企业
                        <br> 经营范围：国内一般贸易（法律、法规限制的项目除外)
                        <br> 经营期限：2022年07月17日
                        <br> 所在地区：辽宁 大连市
                        <br> 旗下品牌：爱蕊崎
                    </p>

                </div>
            </div>
        </div>
        <div class="col-md-9">
            <blockquote>
                <h2 class="title-1"><b>${map.get("1").bt}</b></h2>
                <footer>公司名称</footer><cite title="爱蕊崎服装">爱蕊崎服装</cite>
            </blockquote>

            <p class="span-1"><i>${map.get("1").newnr}</i></p>
        </div>
    </div>


</div>
<!--分割开-->

<!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- CORE PLUGINS -->
<script src="../page/beforePage/vendor/jquery.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/jquery-migrate.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<!-- PAGE LEVEL PLUGINS -->
<script src="../page/beforePage/vendor/jquery.easing.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/jquery.back-to-top.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/jquery.smooth-scroll.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/jquery.wow.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/swiper/js/swiper.jquery.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/magnific-popup/jquery.magnific-popup.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/masonry/jquery.masonry.pkgd.min.js" type="text/javascript"></script>
<script src="../page/beforePage/vendor/masonry/imagesloaded.pkgd.min.js" type="text/javascript"></script>


<!-- PAGE LEVEL SCRIPTS -->
<script src="../page/beforePage/js/layout.min.js" type="text/javascript"></script>
<script src="../page/beforePage/js/components/wow.min.js" type="text/javascript"></script>
<script src="../page/beforePage/js/components/swiper.min.js" type="text/javascript"></script>
<script src="../page/beforePage/js/components/maginific-popup.min.js" type="text/javascript"></script>
<script src="../page/beforePage/js/components/masonry.min.js" type="text/javascript"></script>
<script src="../page/beforePage/js/components/gmap.min.js" type="text/javascript"></script>
</body>

</html>
