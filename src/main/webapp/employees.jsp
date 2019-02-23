<%--
  Created by IntelliJ IDEA.
  User: NicolaeA
  Date: 16.02.2019
  Time: 02:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:useBean id="employeeService" class="com.sda.service.EmployeeService"></jsp:useBean>
<jsp:useBean id="userService" class="com.sda.service.UserService"></jsp:useBean>

<html>
<head>
    <title>Employees</title>
    <link href="./css/style.css" rel="stylesheet" type="text/css">
</head>
<jsp:include page="header.jsp"/>

<body>
<h1>Employees page</h1>
<table id="employees" border = "1" width = "50%" style="cursor: pointer;">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Department</th>
        <th>Manager</th>
        <th>Edit/Delete</th>
    </tr>

    <c:forEach var="employee" items="${employeeService.getAll()}">
    <tr>
    <td><c:out value="${employee.getId()}" /></td>
    <td>
    <a href="employees_details.jsp"><c:out value="${employee.getName()}"/></a>
    </td>
    <td><c:out value="${employee.getDepartment().getDepartmentName()}" /></td>
    <td><c:out value="${employee.getManager()}" /></td>
    <td><button onClick="window.location='editData.jsp';">Edit</button>
    <button onclick="window.location='deleteData.jsp';">Delete</button></td>
    </tr>
    </c:forEach>
    </table>
    <button id="add_button" onClick="window.location='addData.jsp';">Add Employee</button>
</table>

</body>
</html>

<%--<html>--%>
<%--<head>--%>
    <%--<title>Employees</title>--%>
    <%--<link href="../css/style.css" rel="stylesheet" type="text/css">--%>

    <%--<style type="text/css">--%>

        <%--table{--%>
            <%--/*width:300px;*/--%>
            <%--border-collapse:collapse;--%>
            <%--background: white;--%>
        <%--}--%>

        <%--&lt;%&ndash;td{background:white;border:1px solid #000000}&ndash;%&gt;--%>
        <%--&lt;%&ndash;td a{display:block;position:relative}&ndash;%&gt;--%>
        <%--td a:hover{background:gray;color:#000000}--%>
    <%--</style>--%>

<%--</head>--%>

<%--<jsp:include page="header.jsp"/>--%>
<%--<body>--%>

<%--<h1>Employees page!</h1>--%>

<%--<table border="1" cellpadding="5">--%>
    <%--<caption><h2>List of users</h2></caption>--%>
    <%--<tr>--%>
        <%--<th>ID</th>--%>
        <%--<th>Name</th>--%>
        <%--<th>Department</th>--%>
        <%--<th>Manager</th>--%>
    <%--</tr>--%>

    <%--<c:forEach var="employee" items="${employeeService.getAll()}">--%>
        <%--<tr>--%>
            <%--<td><c:out value="${employee.getId()}" /></td>--%>
            <%--<td>--%>
                <%--<a href="employees_details.jsp"><c:out value="${employee.getName()}"/></a>--%>
            <%--</td>--%>
            <%--<td><c:out value="${employee.getDepartment().getDepartmentName()}" /></td>--%>
            <%--<td><c:out value="${employee.getManager()}" /></td>--%>
            <%--<td><button onClick="window.location='editData.jsp';">Edit</button>--%>
                <%--<button onclick="window.location='deleteData.jsp';">Delete</button></td>--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>
<%--</table>--%>
<%--<button id="add_button" onClick="window.location='addData.jsp';">Add Employee</button>--%>



<%--&lt;%&ndash;&lt;%&ndash;<table align="center" cellpadding="5" cellspacing="5" border="1">&ndash;%&gt;&ndash;%&gt;--%>
    <%--&lt;%&ndash;&lt;%&ndash;<tr>&ndash;%&gt;&ndash;%&gt;--%>

    <%--&lt;%&ndash;&lt;%&ndash;</tr>&ndash;%&gt;&ndash;%&gt;--%>
    <%--&lt;%&ndash;&lt;%&ndash;<tr>&ndash;%&gt;&ndash;%&gt;--%>
        <%--&lt;%&ndash;&lt;%&ndash;<td><b>id</b></td>&ndash;%&gt;&ndash;%&gt;--%>
        <%--&lt;%&ndash;&lt;%&ndash;<td><b>Name</b></td>&ndash;%&gt;&ndash;%&gt;--%>
        <%--&lt;%&ndash;&lt;%&ndash;<td><b>Department</b></td>&ndash;%&gt;&ndash;%&gt;--%>
        <%--&lt;%&ndash;&lt;%&ndash;<td><b>Manager</b></td>&ndash;%&gt;&ndash;%&gt;--%>
    <%--&lt;%&ndash;&lt;%&ndash;</tr>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;</table>&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;<span><c:out value="${employeeService.getAll()}"/>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:forEach items="${employeeService.findById(1)}" var="employee">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<span><c:out value="${employee.getName()}"/></span>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:forEach items="${userService.findById(1)}" var="user">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<span><c:out value="${employee.getUsername()}"/></span>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
<%--</body>--%>
<%--</html>--%>
