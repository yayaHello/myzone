<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍数据库编辑</title>
</head>
<body bgcolor="#5f9ea0">
    <form   action="AddBook.jsp" method="post" onsubmit="return check(this);" >
        <table   style="margin:14% 0 0 30% " width="450">
            <tr>
                <td align="center" colspan="2">
                    <h2>请输入新读的书籍信息</h2>
                    <hr>
                </td>
            </tr>
            <tr>
                <td align="right">阅读时间:</td>
                <td><input type="text" name="time"></td>
            </tr>
            <tr>
                <td align="right">书  名:</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td align="right">作  者:</td>
                <td><input type="text" name="author"></td>
            </tr>
            <tr>
                <td align="right">评星级吧:</td>
                <td><input type="text" name="star"></td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <input type="submit" value="添加">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
