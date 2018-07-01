<%--
  Created by IntelliJ IDEA.
  User: 雅雅
  Date: 2017/12/18
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="conn" class="bean.ConnDB" scope="page"></jsp:useBean>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/css.css" rel="stylesheet">
    <title>zone</title>
    <%--<script language="javascript" src="js/AjaxRequest.js"></script>--%>
    <%--<script language="javascript">--%>
        <%--/******************错误处理的方法*******************************/--%>
        <%--function onerror(){--%>
            <%--alert("您的操作有误！");--%>
        <%--}--%>
        <%--/******************实例化Ajax对象的方法*******************************/--%>
        <%--function getInfo(){--%>
            <%--var loader=new net.AjaxRequest("getInfo.jsp?nocache="+new Date().getTime(),deal_getInfo,onerror,"GET");--%>
        <%--}--%>
        <%--/************************回调函数**************************************/--%>
        <%--function deal_getInfo(){--%>
            <%--document.getElementById("showInfo").innerHTML=this.req.responseText;--%>
        <%--}--%>
        <%--window.onload=function(){--%>
            <%--getInfo();	//调用getInfo()方法获取公告信息--%>
            <%--window.setInterval("getInfo()", 600000);	//每隔10分钟调用一次getInfo()方法--%>
        <%--}--%>
    <%--</script>--%>

</head>
<body background="images/2.jpg">
<div class="index">
    <div class="bgbox">
        <div class="side-nav">
            <div class="aixuexi"><img src="images/logo.png"></div>
            <ul class="navbar mt36 tc">
                <li><a href="photo.html"><em></em><span>照片墙</span><i></i></a></li>
                <li><a href="book.jsp"><em></em><span>我的书籍</span><i></i></a></li>
                <li><a href="movie.jsp"><em></em><span>我的电影</span><i></i></a></li>
                <li><a href="tour.jsp"><em></em><span>我的旅游</span><i></i></a></li>
                <li><a href="indexaddmood.jsp"><em></em><span >心情板</span><i></i></a></li>
            </ul>
        </div>
    </div>
</div>
<div class="y101"><img src="images/img4.png"></div>
<div class="y103"><img src="images/aa.png"></div>
<%
ResultSet rs=conn.executeQuery("select * from mood");//statement执行sql语句并复制给结果

%>
<div class="y102">
    <marquee   direction="up" scrollamount="2">
       <% while(rs.next()) {%>
        <ul>
            <li class="a"><%=rs.getString(2)%>
        </ul>
        <%}%>
    </marquee>
    <br/>
    <a style="text-decoration: none " href="delete.jsp">清空心情板</a>
</div>

<%
    conn.close();   rs.close();
%>

</body>
</html>
