<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:if test="${empty user}">
    <div>

        <a href="pages/user/login.jsp" style=" font-size: 20px; color: coral; border:2px  solid  #444444 ;">&nbsp;&nbsp;登录&nbsp;&nbsp;</a> |
        <a href="pages/user/regist.jsp" style=" font-size: 20px; color: cadetblue; border:2px  solid  #444444 ;">&nbsp;&nbsp;注册&nbsp;&nbsp;</a> &nbsp;&nbsp;
    </div>

</c:if>
<c:if test="${!empty user}">
<div>
    <span>欢迎<span class="um_span">${user.username}</span>光临宠物系统</span>&nbsp;&nbsp;&nbsp;
    <a href="pages/amdoctor/anindex.jsp" style="   font-size: 20px; color: cornflowerblue;  border:2px solid  #999999 ;" >&nbsp;&nbsp;兽医&nbsp;&nbsp;</a>&nbsp;&nbsp;
    <a href="pages/mandp/mapindex.jsp" style=" font-size: 20px; color: chocolate; border:2px solid  #999999 ;">&nbsp;&nbsp;客户与宠物&nbsp;&nbsp;</a>&nbsp;&nbsp;
    <a href="userServlet?method=loginout" style="font-size: 20px; color: red; border:2px solid  #999999 ;">&nbsp;&nbsp;注销&nbsp;&nbsp;</a>&nbsp;&nbsp;
</div>

</c:if>
