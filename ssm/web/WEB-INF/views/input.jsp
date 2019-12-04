<%--
  Created by IntelliJ IDEA.
  User: 刘村长
  Date: 2019/11/28
  Time: 13:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
</head>
<body>
<form method="post" action="doAdd">
    <table align="center" border="1" >
        <tr>
            <td colspan="2" align="center">添加用户信息</td>
        </tr>
        <tr>
            <td>姓名</td>
            <td>
                <input type="text" name="lastName"/>
            </td>
        </tr>
        <tr>
            <td>性别</td>
            <td>
                <input name="gender" type="radio" value="1" checked="checked"/>男
                <input name="gender" type="radio" value="0"/>女
            </td>
        </tr>
        <tr>
            <td>邮件</td>
            <td>
                <input type="text" name="email"/>
            </td>
        </tr>

        <tr>
            <td>部门</td>
            <td>
                <select name="d_id">
                    <option value="1" name="1">开发部</option>
                    <option value="2" name="2">测试部</option>
                    <option value="3" name="3">运营部</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <a href="listAllEmps">返回</a>
            </td>
            <td>
                <input type="submit" value="提交"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
