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
    <script type="text/javascript">

        //checked="true"
        window.onload=function(){

            //选中单选框的值
           var gender = '${emp.gender}';
           if("1" == gender){
               document.getElementById("man").checked="true";
              // document.getElementById("man").value="gender";
           }else{
               document.getElementById("women").checked="true";
              // document.getElementById("man").value="gender";
           }

           //选中下拉框的值
           var dept='${emp.d_id}';

           if("1"==dept){
               document.getElementById("kaifa").selected="selected";
           }else if("2"==dept){
               document.getElementById("ceshi").selected="selected";
           }else{
               document.getElementById("yunying").selected="selected";
           }
        };


    </script>
</head>
<body>
<form method="post" action="doEdit" >
    <!-- 设置隐藏id-->
    <input type="hidden" name="id" value="${emp.id}" />

    <table align="center" border="1" >

        <tr>
            <td colspan="2" align="center">编辑用户信息</td>
        </tr>
        <tr>
            <td>姓名</td>
            <td>
                <input type="text" name="lastName" value="${emp.lastName}"/>
            </td>
        </tr>
        <tr>
            <td>性别</td>
            <td>
                <input name="gender" id="man" type="radio" value="1"/>男
                <input name="gender" id="women" type="radio" value="0"/>女

            </td>
        </tr>

        <tr>
            <td>邮件</td>
            <td>
                <input type="text" name="email" value="${emp.email}"/>
            </td>
        </tr>

        <tr>
            <td>部门</td>
            <td>
                <select name="d_id">
                    <option id="kaifa"  name="kaifa" value="1">开发部</option>
                    <option id="ceshi"  name="ceshi" value="2">测试部</option>
                    <option id="yunying" name="yunying" value="3">运营部</option>
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
