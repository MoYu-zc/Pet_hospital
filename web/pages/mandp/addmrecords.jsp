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
    <title>添加病历信息</title>
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
            $(".btns").click(function () {

                var time = $('input[name="time"]').val();
                var note = $('input[name="note"]').val();
                 if(time==""){
                    alert("添加日期为空");
                    return false;
                }
                else if(note==""){
                    alert("请填写病历描述");
                    return false;
                }
                else if(!confirm("确定添加该份病历吗?"))
                    return false;

                })

            })
        // 设置div高度
        var textareaWidth = document.getElementById("textarea").offsetHeight;
        document.getElementById("divTest").style.height=textareaWidth;
        var address = document.getElementById("textarea");

        autoTextarea(address);
        /**
         * 参考网上资料
         * 文本框根据输入内容自适应高度
         * @param                {HTMLElement}           输入框元素
         * @param                {Number}                设置光标与输入框保持的距离(默认0)
         * @param                {Number}                设置最大高度(可选)
         */
        function autoTextarea(elem, extra, maxHeight) {
            extra = extra || 0;
            // 浏览器判断
            var isFirefox = !!document.getBoxObjectFor || 'mozInnerScreenX' in window, isOpera = !!window.opera && !!window.opera.toString().indexOf('Opera'),

                addEvent = function (type, callback) {
                    elem.addEventListener ? elem.addEventListener(type, callback, false) : elem.attachEvent('on' + type, callback);
                },

                getStyle = elem.currentStyle ? function (name) {
                    var val = elem.currentStyle[name];

                    if (name === 'height' && val.search(/px/i) !== 1) {
                        var rect = elem.getBoundingClientRect();
                        return rect.bottom - rect.top - parseFloat(getStyle('paddingTop')) - parseFloat(getStyle('paddingBottom')) + 'px';
                    };

                    return val;
                } : function (name) {
                    return getComputedStyle(elem, null)[name];
                },


                minHeight = parseFloat(getStyle('height'));
            elem.style.resize = 'none';
            var change = function () {
                var scrollTop, height,
                    padding = 0,
                    style = elem.style;
                if (elem._length === elem.value.length) {
                    return;
                }
                elem._length = elem.value.length;
                if (!isFirefox && !isOpera) {
                    padding = parseInt(getStyle('paddingTop')) + parseInt(getStyle('paddingBottom'));
                };

                scrollTop = document.body.scrollTop || document.documentElement.scrollTop;
                elem.style.height = minHeight + 'px';

                if (elem.scrollHeight > minHeight) {
                    if (maxHeight && elem.scrollHeight > maxHeight) {
                        height = maxHeight - padding;
                        style.overflowY = 'auto';
                    } else {
                        height = elem.scrollHeight - padding;
                        style.overflowY = 'hidden';
                    };
                    style.height = height + extra + 'px';
                    scrollTop += parseInt(style.height) - elem.currHeight;
                    document.body.scrollTop = scrollTop;
                    document.documentElement.scrollTop = scrollTop;
                    elem.currHeight = parseInt(style.height);
                };
            };

            addEvent('propertychange', change);
            addEvent('input', change);
            addEvent('focus', change);
            change();
        };

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
<form action="MrecordsServlet" method="post">
    <input type="hidden" name="method" value="AddMrecords">
    <center>
        <label>宠物名称：</label>
        <input type="text" maxlength="27" placeholder="请输入宠物名称" class="inputText4" size="100" value="${pet.name}"  name="pname" readonly="readonly"><br><br><br>
        <label>主人名字：</label>
        <input type="text" maxlength="27" placeholder="请输入主人名字" class="inputText4" size="100" value="${pet.master}"  name="master" readonly="readonly"><br><br><br>
        <label>宠物类型：</label>
        <input type="text" maxlength="27" placeholder="请输入宠物类型" class="inputText4" size="100" value="${pet.type}"  name="type" readonly="readonly"><br><br><br>
        <label>添加日期：</label>
        <input type="text" maxlength="27" placeholder="请输入添加日期" class="inputText4" size="100" value=""  name="time"><br><br>
        <label>病历描述：</label><br>
      <textarea cols = "35" rows="8" wrap="hard" style="font-size:15px;overflow: auto;resize:none;border:1px solid blue;display:block;"
            id="textarea" name="note"  placeholder="请输入病历描述"></textarea><br>
        <div>
            <input type="submit" class="btns" onmouseover="this.style.backgroundPosition='left -40px'"
                   onmouseout="this.style.backgroundPosition='left top'" value="提交" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button" class="btns1" onclick="javascript:history.back(-1);" onmouseover="this.style.backgroundPosition='left -40px'"
                   onmouseout="this.style.backgroundPosition='left top'" value="放弃" />
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
