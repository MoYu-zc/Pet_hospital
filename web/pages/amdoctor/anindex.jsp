<%--
  Created by IntelliJ IDEA.
  User: 14371
  Date: 2020/6/8
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/dir/base.jsp"%>
    <title>兽医初始页</title>
    <style type="text/css">
        button { font-family:"Arial", "Tahoma", "微软雅黑", "雅黑"; border:0;
            vertical-align:middle; margin:8px; line-height:18px; font-size:18px }
        .yongyin {
            width:150px;
            text-align:center;
            line-height:100%;
            padding:0.3em;
            font:16px Arial,sans-serif bold;
            font-style:normal;
            text-decoration:none;
            margin:2px;
            vertical-align:text-bottom;
            zoom:1;
            outline:none;
            font-size-adjust:none;
            font-stretch:normal;
            border-radius:50px;
            box-shadow:0px 1px 2px rgba(0,0,0,0.2);
            text-shadow:0px 1px 1px rgba(0,0,0,0.3);
            color:#fefee9;
            border:0.2px solid #2299ff;
            background-repeat:repeat;
            background-size:auto;
            background-origin:padding-box;
            background-clip:padding-box;
            background-color:#3399ff;
            background: linear-gradient(to bottom, #eeeff9 0%,#2299ff 100%);
        }
        .yongyin:hover {
            background: #2299ff;
        }

    </style>
    <script type="text/javascript">
        $(function () {
            $("#sy1").click(function () {
                location.href="DoctorServlet?method=dorlist";
            })
             $("#sy2").click(function () {
                 location.href="pages/amdoctor/addamdor.jsp";
             })
             $("#sy3").click(function () {
                 location.href="pages/amdoctor/inquireDor.jsp";
             })
        })
    </script>
</head>
<body>
<div id="header">
    <img class="logo_img" alt=""  src="static/img/logo.png" >
    <span class="wel_word">宠物系统</span>
    <%@include file="/dir/a1.jsp"%>
</div>

<br><br><br><hr>
<div style="margin-top:10px">
    &nbsp;&nbsp;&nbsp;&nbsp;
    <button type="button" id="sy1" class="yongyin"  style="width:125px; height:40px; ">兽医信息</button>
    &nbsp;&nbsp;&nbsp;
    <button type="button" id="sy2" class="yongyin"  style="width:125px; height:40px; ">添加兽医</button>
    &nbsp;&nbsp;&nbsp;
    <button type="button" id="sy3" class="yongyin"  style="width:125px; height:40px; ">查询兽医</button>

</div>
<hr>
<br> <br>
<div>
    <br/>  <br/>  <br/>  <br/>  <br/>  <br/>   <br/>  <br/> <br/> <br/>
    <center>
        <span class="welword" style="text-align:center">兽医信息页</span>
    </center>
    <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/> <br/> <br/><br><hr>
</div>
<div id="bottom">
		<span>
			宠物系统.zc &copy;2020
		</span>
</div>
</body>
</html>
