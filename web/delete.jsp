<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<jsp:useBean id="conn" class="bean.ConnDB" scope="page"></jsp:useBean>--%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>zone</title>
</head>
<body>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");//加载数据库驱动，注册到驱动管理器
        out.print("加载数据库驱动成功！！！" + "<br/>");
        String url = "jdbc:mysql://localhost:3306/book";//数据库连接字符串
        String name = "root";//
        String password = "123456";
        Connection conn = DriverManager.getConnection(url, name, password);
        //创建connection连接，
        out.print("创建connection连接成功！！！" + "<br/>");
        String sql = "delete  from mood ";
        Statement state = conn.createStatement();
        int flag = state.executeUpdate(sql);
        if (flag > 0) {
            out.println("<script>alert('删除成功！');history.go(-1)</script>");
        }
        state.close();
    }catch(Exception e){
        out.println("<script>alert('删除失败！');history.go(-1)</script>");
    }

%>
</body>
</html>
