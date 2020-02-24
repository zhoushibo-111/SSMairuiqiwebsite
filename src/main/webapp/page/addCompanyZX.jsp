
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>爱蕊崎产品宣传网</title>
    <link href="beforePage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="beforePage/css/layout.min.css" rel="stylesheet" type="text/css" />
    <style>
        .container  #input-1{
            margin-top: 80px;
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
<div class="container-fluid">
    <h2>添加资讯</h2>
</div>
<div class="container">
    <div class="row" id="input-1">
        <div class="col-lg-4 col-lg-offset-4">
            <div class="input-group input-group-lg">
                <span class="input-group-addon" id="sizing-addon1">&nbsp&nbsp&nbsp标题&nbsp&nbsp&nbsp&nbsp</span>
                <input type="text" class="form-control" aria-describedby="sizing-addon1" id="titleadd">
                <span id="s_title" class="eerorAdd"></span>
            </div>
        </div>
    </div>
    <div class="row" id="input-2">
        <div class="col-lg-4 col-lg-offset-4">
            <div class="input-group input-group-lg" style="position: relative;top: 10px;">
                <span class="input-group-addon" id="sizing-addon2">发布时间</span>
                <input type="text" class="form-control" placeholder="例如:2019-08-18" aria-describedby="sizing-addon1" id="timeadd">
                <span id="s_time" class="eerorAdd"></span>
            </div>
        </div>
    </div>
    <div class="row" id="textarea-1">

        <div class="col-lg-10 col-lg-offset-1">
            <textarea class="form-control" name="nr" rows="8" style="background-color:silver;"  id="exampleText"></textarea>
        </div>
    </div>
    <div class="row input-margin">
        <div class="col-lg-4"></div>
        <div class="col-lg-2">
            <button class="btn btn-default" type="submit"  id="submitAdd" style="position:relative;top: 20px"  href="${ctx}/gszixun/find">确认</button>
        </div>
        <div class="col-lg-1"></div>
        <div class="col-lg-2">
            <a class="btn btn-default" href="${ctx}/gszixun/find" role="button" style="position:relative;top: 20px">返回</a>
        </div>
        <div class="col-lg-4"></div>
    </div>
    </div>




<script src="beforePage/vendor/jquery.min.js" type="text/javascript"></script>
<script src="beforePage/vendor/jquery-migrate.min.js" type="text/javascript"></script>
<script src="beforePage/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script>
    document.getElementById("submitAdd").onclick=function () {
        if (checkTitle() && checkTime() && checkTextarea()){
            add();
            $.ajax({
                type : "post",
                url : "${ctx}/comanyZX/addZX",
                contentType:"application/x-www-form-urlencoded;charset=utf-8",
                data : {
                    title : document.getElementById("titleadd").value,
                    zxdata : document.getElementById("timeadd").value,
                    zxNr : document.getElementById("exampleText").value
                },
                success : function (res) {
                    alert("添加成功");
                }

            })

        }
        function checkTitle() {
            var title = document.getElementById("titleadd").value;
            var flag = title.length <= 15 ? true : false;
            var s_title = document.getElementById("s_title");
            if (flag) {
                //正确

            } else {
                //失败
                if (title == null || title == "") {
                    s_title.innerHTML = "请输入标题";
                } else {
                    s_title.innerHTML = "请输入符合要求的标题";
                }

            }
            return flag;
        }
        function checkTime() {
            var time = document.getElementById("timeadd").value;
            var flag =/^(([0-2][0-3])|([0-1][0-9])):[0-5][0-9]:[0-5][0-9]$/;
            var s_time = document.getElementById("s_time");
            if (flag){
                //正确

            }else{
                //失败
                if (time==null || time==""){
                    s_time.innerHTML="请输入日期";
                }else{
                    s_time.innerHTML="日期不符合规范";
                }

            }
            return flag;
        }
        function checkTextarea() {
            var textarea = document.getElementById("exampleText").value;
            var flag = textarea.length <= 500 ? true : false;
            var s_textarea = document.getElementById("s_textarea");
            if (flag){
                //正确

            }else{
                //失败
                if (textarea==null || textarea==""){
                    s_textarea.innerHTML="请输入资讯内容";
                }else{
                    s_textarea.innerHTML="字数超出了要求";
                }

            }
            return flag;
        }

        function add() {
            if (confirm("确实要添加此账户吗？")) {
                alert("已经添加！");
            } else {
                alert("已经取消了添加操作");
            }
        }
    }
</script>
</body>
</html>
