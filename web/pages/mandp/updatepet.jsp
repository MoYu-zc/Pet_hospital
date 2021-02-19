<%--
  Created by IntelliJ IDEA.
  User: 14371
  Date: 2020/6/9
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改宠物信息</title>
    <%@include file="/dir/base.jsp"%>
    <style>
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
        .btns,.btns1 { width:143px; height:40px; background:url("/static/img/1.jpg") no-repeat left top; color:#FFF; }
        .btns2,.btns3 { width:143px; height:40px; background:url("/static/img/2.jpg") no-repeat left top; color:#FFF; }
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
                location.href="pages/mandp/inquiremap.jsp";
            })
            $("#sy2").click(function () {
                location.href="pages/mandp/addmaster.jsp";
            })
            $("#sy3").click(function () {
                location.href="pages/mandp/addpet.jsp";
            })

            $(".btns2").click(function () {
                location.href="MrecordsServlet?method=getMrecords&name=${pet.name}&master=${pet.master}";
            })
            $(".btns3").click(function () {
                location.href="MrecordsServlet?method=href&name=${pet.name}&master=${pet.master}";
            })

            $(".btns").click(function () {
                var name = $('input[name="name"]').val();
                var type = $('input[name="type"]').val();
                var bath = $('input[name="bath"]').val();
                var master = $('input[name="master"]').val();

                if(type==""){
                    alert("宠物种类为空");
                    return false;
                }
                else if(bath==""){
                    alert("出生日期为空");
                    return false;
                }
                else if(master==""){
                    alert("我的主人为空");
                    return false;
                }
                else if(!confirm("确定修改\n【宠物名称："+name+"\n宠物种类："+type+"\n\"出生日期："+bath+"\n我的主人："+master+"】吗?"))
                    return false;
            })
        })
    </script>
</head>
<body style="overflow: auto;">
<div id="header">
    <img class="logo_img" alt="" src="static/img/logo.png" >
    <span class="wel_word">宠物系统</span>
    <%@include file="/dir/a1.jsp"%>
</div>
<br><br><br><hr>
<div style="margin-top:10px">
    &nbsp;&nbsp;&nbsp;&nbsp;
    <button type="button" id="sy1" class="yongyin"  style="width:125px; height:40px; ">主人和宠物</button>
    &nbsp;&nbsp;&nbsp;
    <button type="button" id="sy2" class="yongyin"  style="width:125px; height:40px; ">添加所有人</button>
    &nbsp;&nbsp;&nbsp;
    <button type="button" id="sy3" class="yongyin"  style="width:125px; height:40px; ">添加宠物</button>

</div>
<hr><br><br><br>
<div>
    <center>
        <span class="errorMsg"><%=request.getAttribute("mgs1")==null?"":request.getAttribute("mgs1")%></span>
    </center>
</div>
<br>
<form action="PetServlet" method="post">
    <input type="hidden" name="method" value="updatepet">
    <center>
        <input type="hidden" value="${pet.id}"  name="id">
        <label>宠物名称：</label>
        <input type="text" maxlength="27" placeholder="请输入名称" class="inputText4" size="100" value="${pet.name}"  name="name" readonly="readonly"><br><br><br>
        <label>宠物种类：</label>
        <input type="text" maxlength="27" placeholder="请输入种类" class="inputText4" size="100" value="${pet.type}"  name="type"><br><br><br>
        <label>出生日期：</label>
        <input type="text" maxlength="27" placeholder="请输入出生日期" class="inputText4" size="100" value="${pet.bath}"  name="bath"><br><br><br>
        <label>我的主人：</label>
        <input type="text" maxlength="27" placeholder="请输入所有人名字" class="inputText4" size="100" value="${pet.master}"  name="master"><br><br><br>
        <div>
            <input type="submit" class="btns" onmouseover="this.style.backgroundPosition='left -40px'"
                   onmouseout="this.style.backgroundPosition='left top'" value="修改" />
           &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button" class="btns1" onclick="javascript:history.back(-1);" onmouseover="this.style.backgroundPosition='left -40px'"
                   onmouseout="this.style.backgroundPosition='left top'" value="放弃" />
        </div>
        <br>
        <div>
            <input type="button" class="btns2"  onmouseover="this.style.backgroundPosition='left -40px'"
                   onmouseout="this.style.backgroundPosition='left top'" value="阅览病历" />
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button" class="btns3"  onmouseover="this.style.backgroundPosition='left -40px'"
                   onmouseout="this.style.backgroundPosition='left top'" value="增加新病历" />
        </div>
    </center>
</form>
<br><br><br><br><hr><br><br><br>
<div id="bottom">
		<span>
			宠物系统.zc &copy;2020
		</span>
</div>
</body>
</html>
