<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!-- 导入的三个包真的很重要，切记不要忘记 -->
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%--<jsp:useBean id="conn" class="bean.ConnDB" scope="page"></jsp:useBean>--%>
<%@page import="java.sql.PreparedStatement" %>

<!-- 解决中文乱码的问题 -->
<%request.setCharacterEncoding("UTF-8"); %>
<!-- 实例化javabean对象的Book类 -->
<jsp:useBean id="book" class="com.cyt.Myservlet"></jsp:useBean>
<!-- 自动匹配同名称属性的元素 -->
<jsp:setProperty property="*" name="book"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body bgcolor="#5f9ea0">
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");//加载数据库驱动，注册到驱动管理器
        out.print("加载数据库驱动成功！！！"+"<br/>");
        String url="jdbc:mysql://localhost:3306/book";//数据库连接字符串
        String name="root";//
        String password="123456";
        Connection conn=DriverManager.getConnection(url,name,password);
        //创建connection连接，
        out.print("创建connection连接成功！！！"+"<br/>");
        String sql="insert into booklist(bookname,readtime,author,star) values(?,?,?,?)";
        //添加图书信息的sql语句
        PreparedStatement ps=conn.prepareStatement(sql);
        //获取PreparedStatement
        ps.setString(1,book.getName());//对sql语句中的第1个参数赋值
        ps.setString(2,book.getTime());//对sql语句中的第2个参数赋值
        ps.setString(3,book.getAuthor());//对sql语句中的第3个参数赋值
        ps.setString(4,book.getStar());//对sql语句中的第4个参数赋值
        int row=ps.executeUpdate();//执行更新操作，返回所影响的行数
        if(row>0){
            out.println("<script>alert('添加成功！');history.go(-2)</script>");
        }
        ps.close();
        conn.close();
    }catch(Exception e){
        out.print("图书信息添加失败！！！");
        e.printStackTrace();
    }
%>
<br>
<a href="index.jsp">返回</a>

</body>
</html>