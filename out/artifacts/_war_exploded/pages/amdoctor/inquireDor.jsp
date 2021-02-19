<%--
  Created by IntelliJ IDEA.
  User: 14371
  Date: 2020/6/9
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询兽医信息</title>
    <%@include file="/dir/base.jsp"%>
    <style>
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

        .inputText4 {
            font-family:Arial,Helvetica,sans-serif;
            background:none repeat scroll 0 0 #F5F7FD;
            border:1px solid #B8BFE9;
            padding:5px 7px;
            width:180px;
            vertical-align:middle;
            height:40px;
            font-size:12px;
            margin:0;
            list-style:none outside none;
        }
        img { border:0px; vertical-align:middle; padding:0px; margin:0px; }
        input, button { font-family:"Arial", "Tahoma", "微软雅黑", "雅黑"; border:0;
            vertical-align:middle; margin:8px; line-height:18px; font-size:18px }
        .btns,.btns1{ width:143px; height:40px; background:url("/static/img/1.jpg") no-repeat left top; color:#FFF; }
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
            $(".btns").click(function () {
                var name = $('input[name="name"]').val();
                if(name==""){
                    alert("医生姓名为空");
                    return false;
                }
                else if(!confirm("确定查询【医生姓名："+name+"】吗?"))
                    return false;
            })
            $(".btns1").click(function () {
                var bumen = $('input[name="bumen"]').val();
                if(bumen==""){
                    alert("医生部门为空");
                    return false;
                }
                else if(!confirm("确定查询【医生部门："+bumen+"】吗?"))
                    return false;
            })
        })
    </script>
</head>
<body>
<div id="header">
    <img class="logo_img" alt="" src="static/img/logo.png" >
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

<hr><br><br><br>
<div>
    <center>
        <span class="errorMsg"><%=request.getAttribute("mgs1")==null?"":request.getAttribute("mgs1")%></span>
    </center>
</div>
<br>
<form action="DoctorServlet" method="post">
    <input type="hidden" name="method" value="inquirename">
    <center>
        <label>医生姓名：</label>
        <input type="text" maxlength="27" placeholder="请输入姓名" class="inputText4" size="100" value=""  name="name">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" class="btns" onmouseover="this.style.backgroundPosition='left -40px'"
                   onmouseout="this.style.backgroundPosition='left top'" value="查询" />

    </center>
</form>
<form action="DoctorServlet" method="post">
    <input type="hidden" name="method" value="inquirebumen">
    <center>
<br><br> <br>
<label>医生部门：</label>
<input type="text" maxlength="27" placeholder="请输入部门" class="inputText4" size="100" value=""  name="bumen">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" class="btns1" onmouseover="this.style.backgroundPosition='left -40px'"
       onmouseout="this.style.backgroundPosition='left top'" value="查询" />
    </center>
</form>
 <br><br><br><br><br><br><br><br><hr><br><br><br>

<div id="bottom">
		<span>
			宠物系统.zc &copy;2020
		</span>
</div>
</body>
</html>
