<%--
  Created by IntelliJ IDEA.
  User: 刘村长
  Date: 2019/11/28
  Time: 9:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <h1 align="center">信息列表</h1>
    <table align="center" border="1" width="70%" cellspacing="0px">
        <tr>
            <th>ID</th>
            <th>LastName</th>
            <th>Email</th>
            <th>Gender</th>
            <th>DeptName</th>
            <th>Operation</th>
        </tr>
        <c:forEach items="${requestScope.emp}" var="emp">
            <tr align="center">
                <td>${emp.id}</td>
                <td>${emp.lastName}</td>
                <td>${emp.email}</td>
                <td>${emp.gender==0?"女":" 男"}</td>
                <td>${emp.dept.departmentName}</td>
                <td>
                    <a href="edit?id=${emp.id}">Edit</a>
                    <a href="delete?id=${emp.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <h2 align="center">
        <a href="goAdd">Add NewEmployee</a>
    </h2>
</head>
<body>

</body>
</html>
