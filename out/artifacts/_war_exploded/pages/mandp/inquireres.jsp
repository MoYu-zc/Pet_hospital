<%@ page import="java.util.List" %>
<%@ page import="bean.pet" %><%--
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
    <title>查询信息</title>
    <style type="text/css">

        .t1
        {
            clear: both;
            border: 1px solid #c9dae4;
        }
        .t1 tr th
        {
            color: #0d487b;
            background: #f2f4f8 url(../CSS/Table/images/sj_title_pp.jpg) repeat-x left bottom;
            line-height: 28px;
            border-bottom: 1px solid #9cb6cf;
            border-top: 1px solid #e9edf3;
            font-weight: normal;
            text-shadow: #e6ecf3 1px 1px 0px;
            padding-left: 5px;
            padding-right: 5px;
        }
        .t1 tr td
        {
            border-bottom: 1px solid #e9e9e9;
            padding-bottom: 5px;
            padding-top: 5px;
            color: #444;
            border-top: 1px solid #FFFFFF;
            padding-left: 5px;
            padding-right: 5px;
            word-break: break-all;
        }
        /* white-space:nowrap; text-overflow:ellipsis; */
        tr.alt td
        {
            background: #ecf6fc; /*这行将给所有的tr加上背景色*/
        }
        tr.over td
        {
            background: #bcd4ec; /*这个将是鼠标高亮行的背景色*/
        }

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
        a:link {color: #444444;text-decoration:none;}    /* 未被访问的链接 */
        a:visited {color: #444444;text-decoration:none;} /* 已被访问的链接 */
        a:hover {color: #ecf6fc;text-decoration:none;}   /* 鼠标指针移动到链接上 */
        a:active {background: aqua;text-decoration:none;}  /* 正在被点击的链接 */

    </style>

    <script type="text/javascript">
        $(document).ready(function () { //这个就是传说的ready
            $(".t1 tr").mouseover(function () {
                //如果鼠标移到class为stripe的表格的tr上时，执行函数
                $(this).addClass("over");
            }).mouseout(function () {
                //给这行添加class值为over，并且当鼠标一出该行时执行函数
                $(this).removeClass("over");
            }) //移除该行的class
            $(".t1 tr:even").addClass("alt");
            //给class为stripe的表格的偶数行添加class值为alt
        });
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
    <button type="button" id="sy1" class="yongyin"  style="width:125px; height:40px; ">主人和宠物</button>
    &nbsp;&nbsp;&nbsp;
    <button type="button" id="sy2" class="yongyin"  style="width:125px; height:40px; ">添加所有人</button>
    &nbsp;&nbsp;&nbsp;
    <button type="button" id="sy3" class="yongyin"  style="width:125px; height:40px; ">添加宠物</button>
</div>

<hr>
<br> <br>
<table width="100%" id="ListArea" style="overflow: auto;" border="0" class="t1" align="center"  cellpadding="0"
       cellspacing="0">
    <tr align="center">
        <th>宠物名称</th>
        <th>所有人名称</th>
    </tr>
    <c:forEach items="${pets}" var="pets">
        <tr align="center">
            <td><a href="PetServlet?method=href&name=${pets.name}&master=${pets.master}">${pets.name}</a></td>
            <td><a href="CustomerServlet?method=getOneCus&name=${pets.master}">${pets.master}</a> </td>
        </tr>
    </c:forEach>

</table>
<br> <br> <br>


<div id="bottom">
		<span>
			宠物系统.zc &copy;2020
		</span>
</div>
</body>
</html>