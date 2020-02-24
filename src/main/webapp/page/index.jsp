
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" class="no-js">

<head>
    <meta charset="utf-8" />
    <title>爱蕊崎产品宣传网站</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />


    <!-- <link href="Hind:300,400,500,600,700" rel="stylesheet" type="text/css"> -->
    <link href="../page/beforePage/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css" />
    <link href="../page/beforePage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />


    <link href="../page/beforePage/css/animate.css" rel="stylesheet">
    <link href="../page/beforePage/vendor/swiper/css/swiper.min.css" rel="stylesheet" type="text/css" />
    <link href="../page/beforePage/vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css" />

    <!-- THEME STYLES -->
    <link href="../page/beforePage/css/layout.min.css" rel="stylesheet" type="text/css" />

<%--    <!-- Favicon -->--%>
<%--    <link rel="shortcut icon" href="../page/beforePage/favicon.ico" />--%>
    <!--单独写的-->
    <style>

        div.demo1-1 {
            float: left;
            width: 200px;
            height: 200px;
            cursor: pointer;
            transition: 0.3s;
            box-shadow: 10px 10px 10px rgba(0, 0, 0, .5);
            /*考虑浏览器兼容性*/
            -moz-box-shadow: 10px 10px 10px rgba(0, 0, 0, .5);
            -webkit-box-shadow: 10px 10px 10px rgba(0, 0, 0, .5);
        }

        div.zoomImage {
            width: 100%;
            height: 0;
            padding-top: 100%;
            overflow: hidden;
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;
            -webkit-background-size: cover;
            -moz-background-size: cover;
        }

        div.demo1-1:hover {
            opacity: 0.7;
        }

        .basic-grey {
            margin-left: auto;
            margin-right: auto;
            max-width: 500px;
            background: #F7F7F7;
            padding: 25px 15px 25px 10px;
            font: 12px Georgia, "Times New Roman", Times, serif;
            color: #888;
            text-shadow: 1px 1px 1px #FFF;
            border: 1px solid #E4E4E4;
        }

        .basic-grey h1 {
            font-size: 25px;
            padding: 0px 0px 10px 40px;
            display: block;
            border-bottom: 1px solid #E4E4E4;
            margin: -10px -15px 30px -10px;

            color: #888;
        }

        .basic-grey h1>span {
            display: block;
            font-size: 11px;
        }

        .basic-grey label {
            display: block;
            margin: 0px;
        }

        .basic-grey label>span {
            float: left;
            width: 20%;
            text-align: right;
            padding-right: 10px;
            margin-top: 10px;
            color: #888;
        }

        .basic-grey input[type="text"],
        .basic-grey input[type="email"],
        .basic-grey textarea,
        .basic-grey select {
            border: 1px solid #DADADA;
            color: #888;
            height: 30px;
            margin-bottom: 16px;
            margin-right: 6px;
            margin-top: 2px;
            outline: 0 none;
            padding: 3px 3px 3px 5px;
            width: 70%;
            font-size: 12px;
            line-height: 15px;
            box-shadow: inset 0px 1px 4px #ECECEC;
            -moz-box-shadow: inset 0px 1px 4px #ECECEC;
            -webkit-box-shadow: inset 0px 1px 4px #ECECEC;
        }

        .basic-grey textarea {
            padding: 5px 3px 3px 5px;
        }

        .basic-grey textarea {
            height: 100px;
        }

        .basic-grey .button {
            background: #E27575;
            border: none;
            padding: 10px 25px 10px 25px;
            color: #FFF;
            box-shadow: 1px 1px 5px #B6B6B6;
            border-radius: 3px;
            text-shadow: 1px 1px 1px #9E3F3F;
            cursor: pointer;
        }

        .basic-grey .button:hover {
            background: #CF7A7A
        }
        .eeror{
            color: red;
        }
        .form-control{
            border:2px solid #a1a1a1;
            padding:10px 40px;
            background:#dddddd;
            border-radius:10px;
            position: relative;
            top:3px;
        }
    </style>

</head>
<!-- END HEAD -->

<!-- BODY -->

<body id="body" data-spy="scroll" data-target=".header">

<!--========== HEADER ==========-->
<header class="header navbar-fixed-top">
    <!-- Navbar -->
    <nav class="navbar" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="menu-container js_nav-item">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="toggle-icon"></span>
                </button>

                <!-- Logo -->
                <div class="logo">
                    <!-- <a class="logo-wrap" href="#body"> -->
                    <img class="logo-img logo-img-main" src="../page/beforePage/img/logo01.png" alt="Asentus Logo">

                    </a>
                </div>

            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse nav-collapse">
                <div class="menu-container">
                    <ul class="nav navbar-nav navbar-nav-right">
                        <li><a class="nav-item-child nav-item-hover" href="#">首页</a></li>
                        <li><a class="nav-item-child nav-item-hover" href="${ctx}/product/productfindall">产品信息</a></li>
                        <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="${ctx}/gszixun/findBefore">公司资讯</a></li>
                        <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="${ctx}/companyNew/pageFind">公司简介</a></li>
                        <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#pricing">留言板</a></li>
                        <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="${ctx}/page/login.jsp">后台管理</a></li>
                    </ul>
                </div>
            </div>
            <!-- End Navbar Collapse -->
        </div>
    </nav>
    <!-- Navbar -->
</header>
<!--========== END HEADER ==========-->

<!--========== SLIDER ==========-->
<div class="promo-block">
    <div class="container">


    </div>
</div>
<!--========== SLIDER ==========-->

<!--========== PAGE LAYOUT ==========-->
<!-- Products -->
<div id="products">
    <div class="container content-lg">
        <div class="row text-center margin-b-40">
            <div class="col-sm-6 col-sm-offset-3">
                <h2>秋季新款</h2>
                <p>大连爱蕊崎贸易有限公司，是一家集服装设计、生产、销售于一体的贸易有限公司。公司主打品牌——“爱惢崎”(AIRIQI)，是为注重生活品质与细节、有精致化生活倾向的新都市女性打造的快时尚品牌。</p>
            </div>
        </div>


        <div class="row">
            <!-- Latest Products -->
            <div class="col-sm-4 sm-margin-b-50">
                <div class="margin-b-20">
                    <img class="img-responsive wow fadeIn" src="../page/beforePage/img/product-img/01.jpg" alt="Latest Products Image" data-wow-duration=".3" data-wow-delay=".1s" data-target="#myModal" data-toggle="modal">
                </div>
                <h4><a href="#">Workspace</a> <span class="text-uppercase margin-l-20">Management</span></h4>
                <p>“爱惢崎”（AIRIQI），是为注重生活品质与细节、有精致化生活倾向的新都市女性打造的快时尚品牌。</p>
                <a class="link" href="#">Read More</a>
            </div>
            <!-- End Latest Products -->

            <!-- Latest Products -->
            <div class="col-sm-4 sm-margin-b-50">
                <div class="margin-b-20">
                    <img class="img-responsive wow fadeIn" src="../page/beforePage/img/product-img/02.jpg" alt="Latest Products Image" data-wow-duration=".3" data-wow-delay=".2s" data-target="#myModal" data-toggle="modal">
                </div>
                <h4><a href="#">Minimalism</a> <span class="text-uppercase margin-l-20">Developmeny</span></h4>
                <p>爱蕊崎拥有来自日、韩最前沿设计团队和国际化的运营团队，凭借强大的设计力量和现代化的管理理念，立志打造国内引领潮流的快速时尚品牌。</p>
                <a class="link" href="#">Read More</a>
            </div>
            <!-- End Latest Products -->

            <!-- Latest Products -->
            <div class="col-sm-4 sm-margin-b-50">
                <div class="margin-b-20">
                    <img class="img-responsive wow fadeIn" src="../page/beforePage/img/product-img/03.jpg" alt="Latest Products Image" data-wow-duration=".3" data-wow-delay=".3s" data-target="#myModal" data-toggle="modal">
                </div>
                <h4><a href="#">Cleant Style</a> <span class="text-uppercase margin-l-20">Design</span></h4>
                <p>现代，时尚是经济发展阶段时期促进市场发展的主要推动力之一，随之而产生的消费需求诉求点，已经影响到市场的各行业和领域。</p>
                <a class="link" href="#">Read More</a>
            </div>
            <!-- End Latest Products -->
        </div>
        <!--// end row -->
    </div>
    <div style="font-size: 30px; float:right; margin-right: 60px; cursor:pointer;">
        <a href="${ctx}/product/productfindall"><u>更多精品</u></a>
    </div>

</div>
<!-- End Products -->
<div class="tlinks">Collect from <a href="#">网站建设</a></div>

<!-- Service -->
<div id="service">
    <!--图片1-->
    <div class="bg-color-sky-light" data-auto-height="true">
        <div class="content-lg container">
            <div class="row row-space-2 margin-b-4">
                <div class="col-sm-4 sm-margin-b-4">
                    <!--改变-->
                    <div class="service-info">

                        <div class="demo1-1">
                            <div class="zoomImage" style="background-image: url(${ctx}/page/beforePage/img/product-img/03.jpg)" data-toggle="modal" data-target=".bs-example-modal-sm">

                            </div>

                        </div>
                    </div>
                    <!--改变结束-->
                </div>
                <div class="col-sm-4 sm-margin-b-4">
                    <div class="service-info">

                        <div class="demo1-1">
                            <div class="zoomImage" style="background-image: url(${ctx}/page/beforePage/img/product-img/03.jpg)" data-toggle="modal" data-target=".bs-example-modal-sm"></div>
                        </div>

                    </div>
                </div>
                <div class="col-sm-4 sm-margin-b-4">
                    <div class="service-info">

                        <div class="demo1-1">
                            <div class="zoomImage" style="background-image: url(${ctx}/page/beforePage/img/product-img/03.jpg)" data-toggle="modal" data-target=".bs-example-modal-sm"></div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>
    <!--// end row -->

    <div class="row row-space-2">
        <div class="col-sm-4 sm-margin-b-4">
            <div class="service" data-height="height">
                <div class="service-element">
                    <i class="service-icon icon-badge"></i>
                </div>
                <div class="service-info">
                    <h3>秋冬款</h3>
                    <p class="margin-b-5">爱蕊崎服装</p>
                </div>
<%--                <a href="#" class="content-wrapper-link"></a>--%>
            </div>
        </div>
        <div class="col-sm-4 sm-margin-b-4">
            <div class="service" data-height="height">
                <div class="service-element">
                    <i class="service-icon icon-badge"></i>
                </div>
                <div class="service-info">
                    <h3>春秋款</h3>
                    <p class="margin-b-5">爱蕊崎服装</p>
                </div>
<%--                <a href="#" class="content-wrapper-link"></a>--%>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="service" data-height="height">
                <div class="service-element">
                    <i class="service-icon icon-badge"></i>
                </div>
                <div class="service-info">
                    <h3>夏款</h3>
                    <p class="margin-b-5">爱蕊崎服装</p>
                </div>
<%--                <a href="${ctx}/page/product.jsp" class="content-wrapper-link"></a>--%>
            </div>
        </div>
    </div>
    <!--// end row -->
</div>
</div>
</div>
<!-- End Service -->

<!-- Promo Banner -->
<div class="promo-banner">
    <div class="container-sm content-lg">
        <h2 class="promo-banner-title">免收加盟费</h2>
        <p class="promo-banner-text">对加盟店铺日常运营情况进行全程跟踪与分析，对产品销售、店铺陈列、货品管理、人员管理等店铺运营核心事项进行针对性指导、培训</p>
    </div>
</div>
<!-- End Promo Banner -->

<!-- Work -->
<div id="work">
    <div class="content-md container">
        <!-- Masonry Grid -->
        <div class="masonry-grid row row-space-2">
            <div class="masonry-grid-sizer col-xs-6 col-sm-6 col-md-1"></div>
            <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-8 margin-b-4">
                <!-- Work -->
                <div class="work work-popup-trigger">
                    <div class="work-overlay">
                        <img class="full-width img-responsive" src="${ctx}/page/beforePage/img/800x400/01.jpg" alt="Portfolio Image">
                    </div>
                    <div class="work-popup-overlay">
                        <div class="work-popup-content">
                            <a href="javascript:void(0);" class="work-popup-close">关闭</a>
                            <div class="margin-b-30">
                                <h3 class="margin-b-5">爱蕊崎品牌故事</h3>
                                <span>爱蕊崎 &amp; 贸易有限公司</span>
                            </div>
                            <div class="row">
                                <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                    <div class="margin-t-10 sm-margin-t-0">
                                        <p>是一家集服装设计、生产、销售于一体的贸易有限公司。公司主打品牌——“爱惢崎”(AIRIQI)，是为注重生活品质与细节、有精致化生活倾向的新都市女性打造的快时尚品牌。</p>
                                        <p>爱蕊崎, 立志打造国内潮流的快速时尚品牌。</p>
                                        <ul class="list-inline work-popup-tag">
                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">设计,</a></li>
                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">生产,</a></li>
                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">销售,</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="margin-t-10 sm-margin-t-0">
                                        <p class="margin-b-5"><strong>Project Leader:</strong> 周士博</p>
                                        <p class="margin-b-5"><strong>Designer:</strong> 周士博</p>
                                        <p class="margin-b-5"><strong>Developer:</strong> 周士博</p>
                                        <p class="margin-b-5"><strong>Customer:</strong> 社会名流</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Work -->
            </div>
            <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 margin-b-4">
                <!-- Work -->
                <div class="work work-popup-trigger">
                    <div class="work-overlay">
                        <img class="full-width img-responsive" src="../page/beforePage/img/397x400/01.jpg" alt="Portfolio Image">
                    </div>
                    <div class="work-popup-overlay">
                        <div class="work-popup-content">
                            <a href="javascript:void(0);" class="work-popup-close">关闭</a>
                            <div class="margin-b-30">
                                <h3 class="margin-b-5">爱蕊崎品牌故事</h3>
                                <span>爱蕊崎 &amp; 贸易有限公司</span>
                            </div>
                            <div class="row">
                                <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                    <div class="margin-t-10 sm-margin-t-0">
                                        <p>是一家集服装设计、生产、销售于一体的贸易有限公司。公司主打品牌——“爱惢崎”(AIRIQI)，是为注重生活品质与细节、有精致化生活倾向的新都市女性打造的快时尚品牌。</p>
                                        <p>爱蕊崎, 立志打造国内潮流的快速时尚品牌。</p>
                                        <ul class="list-inline work-popup-tag">
                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">设计,</a></li>
                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">生产,</a></li>
                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">销售,</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="margin-t-10 sm-margin-t-0">
                                        <p class="margin-b-5"><strong>Project Leader:</strong> 周士博</p>
                                        <p class="margin-b-5"><strong>Designer:</strong> 周士博</p>
                                        <p class="margin-b-5"><strong>Developer:</strong> 周士博</p>
                                        <p class="margin-b-5"><strong>Customer:</strong> 社会名流</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Work -->
            </div>
            <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 md-margin-b-4">
                <!-- Work -->
                <div class="work work-popup-trigger">
                    <div class="work-overlay">
                        <!--这里有阴影可能获得的样式-->
                        <img class="full-width img-responsive" src="../page/beforePage/img/397x300/01.jpg" alt="Portfolio Image">
                    </div>
                    <div class="work-popup-overlay">
                        <div class="work-popup-content">
                            <a href="javascript:void(0);" class="work-popup-close">关闭</a>
                            <div class="margin-b-30">
                                <h3 class="margin-b-5">爱蕊崎品牌故事</h3>
                                <span>爱蕊崎 &amp; 贸易有限公司</span>
                            </div>
                            <div class="row">
                                <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                    <div class="margin-t-10 sm-margin-t-0">
                                        <p>是一家集服装设计、生产、销售于一体的贸易有限公司。公司主打品牌——“爱惢崎”(AIRIQI)，是为注重生活品质与细节、有精致化生活倾向的新都市女性打造的快时尚品牌。</p>
                                        <p>爱蕊崎, 立志打造国内潮流的快速时尚品牌。</p>
                                        <ul class="list-inline work-popup-tag">
                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">设计,</a></li>
                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">生产,</a></li>
                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">销售,</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="margin-t-10 sm-margin-t-0">
                                        <p class="margin-b-5"><strong>Project Leader:</strong> 周士博</p>
                                        <p class="margin-b-5"><strong>Designer:</strong> 周士博</p>
                                        <p class="margin-b-5"><strong>Developer:</strong> 周士博</p>
                                        <p class="margin-b-5"><strong>Customer:</strong> 社会名流</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Work -->
            </div>
            <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 md-margin-b-4">
                <!-- Work -->
                <div class="work work-popup-trigger">
                    <div class="work-overlay">
                        <img class="full-width img-responsive" src="../page/beforePage/img/397x300/02.jpg" alt="Portfolio Image">
                    </div>
                    <div class="work-popup-overlay">
                        <div class="work-popup-content">
                            <a href="javascript:void(0);" class="work-popup-close">关闭</a>
                            <div class="margin-b-30">
                                <h3 class="margin-b-5">爱蕊崎品牌故事</h3>
                                <span>爱蕊崎 &amp; 贸易有限公司</span>
                            </div>
                            <div class="row">
                                <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                    <div class="margin-t-10 sm-margin-t-0">
                                        <p>是一家集服装设计、生产、销售于一体的贸易有限公司。公司主打品牌——“爱惢崎”(AIRIQI)，是为注重生活品质与细节、有精致化生活倾向的新都市女性打造的快时尚品牌。</p>
                                        <p>爱蕊崎, 立志打造国内潮流的快速时尚品牌。</p>
                                        <ul class="list-inline work-popup-tag">
                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">设计,</a></li>
                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">生产,</a></li>
                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">销售,</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="margin-t-10 sm-margin-t-0">
                                        <p class="margin-b-5"><strong>Project Leader:</strong> 周士博</p>
                                        <p class="margin-b-5"><strong>Designer:</strong> 周士博</p>
                                        <p class="margin-b-5"><strong>Developer:</strong> 周士博</p>
                                        <p class="margin-b-5"><strong>Customer:</strong> 社会名流</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Work -->
            </div>
            <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4">
                <!-- Work -->
                <div class="work work-popup-trigger">
                    <div class="work-overlay">
                        <img class="full-width img-responsive" src="../page/beforePage/img/397x300/03.jpg" alt="Portfolio Image">
                    </div>
                    <div class="work-popup-overlay">
                        <div class="work-popup-content">
                            <a href="javascript:void(0);" class="work-popup-close">关闭</a>
                            <div class="margin-b-30">
                                <h3 class="margin-b-5">爱蕊崎品牌故事</h3>
                                <span>爱蕊崎 &amp; 贸易有限公司</span>
                            </div>
                            <div class="row">
                                <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                    <div class="margin-t-10 sm-margin-t-0">
                                        <p>是一家集服装设计、生产、销售于一体的贸易有限公司。公司主打品牌——“爱惢崎”(AIRIQI)，是为注重生活品质与细节、有精致化生活倾向的新都市女性打造的快时尚品牌。</p>
                                        <p>爱蕊崎, 立志打造国内潮流的快速时尚品牌。</p>
                                        <ul class="list-inline work-popup-tag">
                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">设计,</a></li>
                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">生产,</a></li>
                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">销售,</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="margin-t-10 sm-margin-t-0">
                                        <p class="margin-b-5"><strong>Project Leader:</strong> 周士博</p>
                                        <p class="margin-b-5"><strong>Designer:</strong> 周士博</p>
                                        <p class="margin-b-5"><strong>Developer:</strong> 周士博</p>
                                        <p class="margin-b-5"><strong>Customer:</strong> 社会名流</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Work -->
            </div>
        </div>
        <!-- End Masonry Grid -->
    </div>
</div>
<!-- End Work -->

<!-- Pricing -->
<div id="pricing" >
    <div class="container">
        <form class="form-inline" action="${ctx}/message/insertdata"  method="get" >
            <div class="row">
                <div class="col-md-4">
            <div class="form-group">
                <label for="exampleInputName2">Name</label>
                <input type="text" name="name" class="form-control" id="exampleInputName2" placeholder="请输入姓名" >
                <span id="s_name" class="eeror"></span>
            </div>
                </div>
                <div class="col-md-4">
            <div class="form-group">
                <label for="exampleInputEmail2">Call</label>
                <input type="call" name="dh" class="form-control" id="exampleInputEmail2" placeholder="请输入电话">
                <span id="s_phone" class="eeror"></span>
            </div>
                </div>
                <div class="col-md-4">
            <div class="form-group">
                <label for="exampleInputEmail2">Email</label>
                <input type="email" name="email" class="form-control" id="exampleInputEmail3" placeholder="请输入邮箱">
                <span id="s_email" class="eeror"></span>
            </div>
                </div>

                <button type="submit" class="btn btn-default" id="form" style="margin-left: 540px;margin-bottom: 2px;position: relative;top: 4px;">提交</button>

            </div>


        <textarea class="form-control" name="nr" rows="8" style="background-color:silver;width:100%" placeholder="请输入不大于140个字..." id="exampleText"></textarea>
        <span id="s_text"></span>
        </form>
        </div>

    </div>
    <!--// end row -->
</div>
</div>
</div>
<!-- End Pricing -->

<!-- Testimonials -->

<div class="content-md container">
    <div class="row">
        <div class="col-sm-9">
            <h2>加盟AIRIQI爱蕊崎女装品牌有什么优势和支持?</h2>

            <!-- Swiper Testimonials -->
            <div class="swiper-slider swiper-testimonials">
                <!-- Swiper Wrapper -->
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <blockquote class="blockquote">
                            <div class="margin-b-20">
                                1.免加盟费。<br>
                                2.开业前系统、全面的选址分析、调研。<br>
                            </div>
                            <div class="margin-b-20">
                                3.门店拓展、购物中心入驻谈判的专家支撑。<br>
                                4.免费的店铺品牌形象设计、装修方案设计支持。
                                <br>
                                <br>
                                <br>
                            </div>
                            <p><span class="fweight-700 color-link">联系电话:</span>&nbsp&nbsp1140-26626377</p>
                        </blockquote>
                    </div>
                    <div class="swiper-slide">
                        <blockquote class="blockquote">
                            <div class="margin-b-20">
                                5.支持统一的卖场道具设计与制作。<br>
                                6.开业前期，派遣专业人员进行实地开业指导与培训帮扶。<br>
                            </div>
                            <div class="margin-b-20">
                                7.安全，快捷的物流体系，以及完善的换货机制。<br>
                                9.对库存周转率、动销比等店铺运营核心指标进行专业跟踪、辅导、提升。
                                <br>
                                <br>
                                <br>
                            </div>
                            <p><span class="fweight-700 color-link">联系人:</span>&nbsp&nbsp张小强</p>
                        </blockquote>
                    </div>
                </div>
                <!-- End Swiper Wrapper -->

                <!-- Pagination -->
                <div class="swiper-testimonials-pagination"></div>
            </div>
            <!-- End Swiper Testimonials -->
        </div>
    </div>
    <!--// end row -->
</div>

<!-- End Testimonials -->

<!-- Contact -->

<!-- End Contact -->
<!--========== END PAGE LAYOUT ==========-->

<!--========== FOOTER ==========-->
<footer class="footer">
    <!-- Links -->
    <div class="section-seperator">
        <div class="content-md container">
            <div class="row">
                <div class="col-sm-2 sm-margin-b-30">
                    <!-- List -->
                    <ul class="list-unstyled footer-list">
                        <li class="footer-list-item"><a href="${map.get("1").link}">${map.get("1").text}</a></li>
                        <li class="footer-list-item"><a href="${map.get("2").link}">${map.get("2").text}</a></li>
                        <li class="footer-list-item"><a href="${ctx}/product/productfindall">关于产品</a></li>
                        <li class="footer-list-item"><a href="#">联系我们</a></li>
                    </ul>
                    <!-- End List -->
                </div>
                <div class="col-sm-2 sm-margin-b-30">
                    <!-- List -->
                    <ul class="list-unstyled footer-list">
                        <li class="footer-list-item"><a href="${map.get("3").link}">${map.get("3").text}</a></li>
                        <li class="footer-list-item"><a href="${map.get("4").link}">${map.get("4").text}</a></li>
                        <li class="footer-list-item"><a href="${map.get("5").link}">${map.get("5").text}</a></li>
                        <li class="footer-list-item"><a href="${map.get("6").link}">${map.get("6").text}</a></li>
                    </ul>
                    <!-- End List -->
                </div>
                <div class="col-sm-3">
                    <!-- List -->
                    <ul class="list-unstyled footer-list">
                        <li class="footer-list-item">
                            <a href="#"></a>
                        </li>
                        <li class="footer-list-item">
                            <a href="#"></a>
                        </li>
                        <li class="footer-list-item">
                            <a href="#"></a>
                        </li>
                    </ul>
                    <!-- End List -->
                </div>
            </div>
            <!--// end row -->
        </div>
    </div>
    <!-- End Links -->

    <!-- Copyright -->
    <div class="content container">
        <div class="row">
            <div class="col-xs-6">
                <p>公司官网</p>
                <a style="cursor:pointer;">http://corp.efu.com.cn/corpindex-960666.html</a>
            </div>
<%-- 上面在放个二维码  --%>
        </div>
        <!--// end row -->
    </div>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">爱蕊崎服装贸易公司</h4>
                </div>
                <div class="modal-body">
                   <span>这是我们的最新产品，去享受爱蕊崎带来的时尚生活</span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>

<%--    <!-- Small modal -->--%>
<%--    <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">想了解更多？</button>--%>

    <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <h3 style="margin-left: 105px">更多新品</h3>
                <p style="margin-left: 65px">更多新品请点击:产品信息</p>
                <p style="margin-left: 65px">更多新品请点击:产品信息</p>
                <p style="margin-left: 65px">更多新品请点击:产品信息</p>
            </div>
        </div>
    </div>

</footer>
<!--========== END FOOTER ==========-->

<!-- Back To Top -->
<a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

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
<script src="../page/beforePage/vendor/swiper/js/swiper.jquery.js" type="text/javascript"></script>
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
<script>
        document.getElementById("form").onclick=function () {

            //姓名校验
            //电话校验
            //邮箱校验
            return checkName() && checkPhone() && checkEmail()&& checkText();

    }
    //校验姓名
    function checkName() {
        var name = document.getElementById("exampleInputName2").value;

        //判断是否符合条件
        var flag = name.length <= 4 || name.length>0? true : false;
        var s_name = document.getElementById("s_name");
        if (flag){
            //正确

        }else{
            //失败
            if (name==null || name==""){
                s_name.innerHTML="请输入姓名";
            }else{
                s_name.innerHTML="姓名格式不正确";
            }

        }
        return flag;
    }
    function checkPhone() {
        var phone = document.getElementById("exampleInputEmail2").value;
        console.log(phone);

        //判断是否符合条件
        var flag = phone.length == 11 ? true : false;
        var s_phone = document.getElementById("s_phone");
        if (flag){
            //正确

        }else{
            //失败
            if (phone==null || phone==""){
                s_phone.innerHTML="请输入手机号码";
            }else {
                s_phone.innerHTML="电话格式不正确";
            }

        }
        return flag;

    }
    function checkEmail() {
        var email = document.getElementById("exampleInputEmail3").value;
        //正则
        var reg_email =new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$");;
        //判断是否符合条件
        var flag = reg_email.test(email);
        var s_email = document.getElementById("s_email");
        if (flag){
            //正确

        }else{
            if (email==null || email==""){
                s_email.innerHTML="请输入邮箱地址";
            }else {
                s_email.innerHTML="邮箱格式不正确";
            }
            //失败
        }
        return flag;

    }

    function checkText() {
        var text = document.getElementById("exampleText").value;
        //正则
        var cot=text.length;
        //判断是否符合条件
        if(cot>140){
            alert("你当前输入超过了140个字符，请谨慎填写");
        }
        else{
            alert("提交成功，你当前输入了"+cot+"字符");
            console.log(cot)
        }

    }

</script>
</body>
<!-- END BODY -->

</html>