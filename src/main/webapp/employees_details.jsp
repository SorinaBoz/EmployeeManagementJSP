<%@ page import="com.sda.service.EmployeeService" %>
<%@ page import="com.sda.model.Employee" %><%--
  Created by IntelliJ IDEA.
  User: Xena
  Date: 2/17/2019
  Time: 1:51 PM
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
    <title>Employees Details</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css">
</head>

<jsp:include page="header.jsp"/>

<body>
<h1>Employees Details Page</h1>
<table id = "employeeDetails" border="1" width = "20%" style="cursor: pointer;">

    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Department</th>
        <th>Manager</th>
        <th>Salary</th>
        <th>Hire Date</th>
        <th>Home Address</th>
        <th>Contact</th>

    </tr >
</table>

<%--<%--%>
<%--int employeeId = Integer.valueOf(request.getParameter("value").trim());--%>
<%--String employeeName = null;--%>
<%--String departmentName = null;--%>
<%--for (Employee employee : employeeService.getAll()) {--%>
<%--if(employee.getId() == employeeId){--%>
<%--employeeName = employee.getName();--%>
<%--departmentName = employee.getDepartment().getDepartmentName();--%>
<%--}--%>
<%--}--%>
<%--%>--%>

<%--<tr>--%>
<%--<td>Emp ID</td>--%>
<%--<td><%= employeeId%></td>--%>
<%--</tr>--%>

<%--<tr>--%>
<%--<td>Name</td>--%>
<%--<td><%= employeeName%></td>--%>
<%--</tr>--%>

<%--<tr>--%>
<%--<td>Department</td>--%>
<%--<td><%= departmentName%></td>--%>
<%--</tr>--%>

<%--<br>--%>
<%--<form>--%>
<%--<input type="button" value="Back!" onclick="history.back()">--%>
<%--</form>--%>

</body>
</html>