<%@ page contentType="text/html;charset=gb2312"%>
<jsp:useBean id="conn" class="bean.ConnDB" scope="page"></jsp:useBean>
<%--<%@ page import="java.sql.*"%>--%>
<%@ page import="bean.ConnDB"%>
<%@ page import="java.sql.ResultSet" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>�ҵ��鼮</title>
    <link rel="stylesheet" href="css/css.css">
</head>

<body bgcolor="#5f9ea0">
<div class="side-nav">
    <div class="aixuexi"><a href="index.jsp"><img src="images/logo.png"></a></div>
    <ul class="navbar mt36 tc">
        <li><a href="photo.html"><em></em><span>��Ƭǽ</span><i></i></a></li>
        <li><a href="book.jsp"><em></em><span>�ҵ��鼮</span><i></i></a></li>
        <li><a href="movie.jsp"><em></em><span>�ҵĵ�Ӱ</span><i></i></a></li>
        <li><a href="tour.jsp"><em></em><span>�ҵ�����</span><i></i></a></li>
        <li><a href="indexaddmood.jsp"><em></em><span >�����</span><i></i></a></li>
    </ul>
</div>

<div class="content">
    <a href="indexaddbook.jsp"><img class="content-logo" src="images/1.png" alt="logo"></a>
    <h1 class="content-title">�鼮�嵥</h1>
    <br><p class="a">���Ѿ��Ķ��������鼮��</p></br>
    <%
         ResultSet rs = null;// ���ݿ��ѯ���ؽ��������
        rs=conn.executeQuery("select * from booklist");//statementִ��sql��䲢���Ƹ����

        while(rs.next()) {%>
    <ul>
        <li class="a"><%=rs.getString(1)%>
            <%=rs.getString(2)%>
            <%=rs.getString(3)%>
            <%=rs.getString(4)%></li>
    </ul>
    <br/>
    <%}%>
    <%
        conn.close();
        rs.close();
    %>
</div>
<div class="c">
    <img src="images/8.png">
</div>
<div class="b">
    <img src="images/7.png" >
</div>
</body>
</html>
