<%@ page import="com.sda.service.EmployeeService" %>
<%@ page import="com.sda.model.Employee" %>
<%@ page import="com.sda.model.Department" %><%--
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
    <title>Additional Information about employees</title>
</head>

<jsp:include page="header.jsp"/>

<body>
<%
    int int_id_employee = Integer.valueOf(request.getParameter("value").trim());
    String name_employee = null;
    String manager_employee = null;
    String department_id= null;
    for (Employee employee : employeeService.getAll()) {
        if(employee.getId() == int_id_employee){
            name_employee = employee.getName();
            manager_employee = employee.getManager();
            department_id = employee.getDepartment().getDepartmentName();
        }
    }
%>
<h1>Employees Details</h1>

<h1>Details of employee:</h1>
<table id="tblDetailEmployee" border = "1" width = "20%" style="cursor: pointer;">
    <tr>
        <td>Emp ID</td>
        <td><%= int_id_employee%></td>
    </tr>

    <tr>
        <td>Name</td>
        <td><%= name_employee%></td>
    </tr>
    <tr>
        <td>Manager</td>
        <td><%= manager_employee%></td>
    </tr>
    <tr>
        <td>Department</td>
        <td><%= department_id%></td>
    </tr>
</table>

<br>
<form>
    <input type="button" value="Back!" onclick="history.back()">
</form>
</body>
</html>
