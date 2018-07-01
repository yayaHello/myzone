<%@ page language="java" contentType="text/html; charset=GB18030"
         pageEncoding="GB18030"%>
<%@ page import="java.sql.*" %>
<jsp:useBean id="conn" class="bean.ConnDB" scope="page"></jsp:useBean>
<ul>
    <%
        ResultSet rs=conn.executeQuery("SELECT * FROM  mood");	//获取公告信息
        if(rs.next()){
            do{
                out.print("<li>"+rs.getString(1)+"</li>");
            }while(rs.next());
        }else{
            out.print("<li>你还没有抒写心情哦</li>");
        }
    %>
</ul>