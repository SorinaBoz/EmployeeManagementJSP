<%--
  Created by IntelliJ IDEA.
  User: Xena
  Date: 2/22/2019
  Time: 11:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:useBean id="employeeService" class="com.sda.service.EmployeeService"></jsp:useBean>
<jsp:useBean id="userService" class="com.sda.service.UserService"></jsp:useBean>
<jsp:useBean id="departmentService" class="com.sda.service.DepartmentService"></jsp:useBean>


<html>
<head>
    <title>Departments</title>
    <link href="./css/style.css" rel="stylesheet" type="text/css">
</head>
<jsp:include page="header.jsp"/>

<body>
<h1>Departments page</h1>
<table id="departments" border = "1" width = "50%" style="cursor: pointer;">
    <tr>
        <th>Department ID</th>
        <th>Name</th>
    </tr>

    <c:forEach var = "department" items = "${departmentService.getAll()}">
        <tr>
            <td> <c:out value = "${department.getId()}"/></td>
            <td> <c:out value = "${department.getDepartmentName()}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>