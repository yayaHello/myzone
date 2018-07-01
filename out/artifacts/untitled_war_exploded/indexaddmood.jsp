<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>心情板</title>
</head>
<body bgcolor="#5f9ea0">
<form   action="addmood.jsp" method="post" onsubmit="return check(this);" >
    <table   style="margin:14% 0 0 30% " width="450">
        <tr>
            <td align="center" colspan="2">
                <h2>心情板也可以做备忘录用哦</h2>
                <hr>
            </td>
        </tr>
        <tr>
            <td align="right">抒写心情</td>
            <td><textarea name="mood" id="mood" cols="30" rows="10"></textarea></td>
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
