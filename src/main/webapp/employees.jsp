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
</head>
<jsp:include page="header.jsp"/>
<body>
<h1>Employees page!</h1>

<table id="employees_table" align="center"  border="1" cellpadding="5" style="width:50%">
    <caption><h2>List of users</h2></caption>
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
            <td onclick="myFunction(this)"> <c:out value = "${employee.getName()}"/></td>
            <td><c:out value="${employee.getDepartment().getDepartmentName()}" /></td>
            <td><c:out value="${employee.getName()}" /></td>
            <td><button onClick="window.location='editData.jsp';">Edit</button>
                <button onclick="window.location='deleteData.jsp';">Delete</button></td>
        </tr>
    </c:forEach>
</table>

<button id="add_button" onClick="window.location='addEmployee.jsp';">Add Employee</button>
<script>
    function myFunction(x) {
        var table = document.getElementById('employees_table');
        for(var i = 1; i < table.rows.length; i++) {
            table.rows[i].onclick = function() {
                var id_employee = this.cells[0].innerHTML;
                location.href="employees_details.jsp?value=" + id_employee;
            };
        }
    }
</script>

<%--&lt;%&ndash;<table align="center" cellpadding="5" cellspacing="5" border="1">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>

    <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td><b>id</b></td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td><b>Name</b></td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td><b>Department</b></td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td><b>Manager</b></td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
<%--</table>--%>
<%--&lt;%&ndash;<span><c:out value="${employeeService.getAll()}"/>&ndash;%&gt;--%>
<%--</span>--%>
<%--<c:forEach items="${employeeService.findById(1)}" var="employee">--%>
    <%--<span><c:out value="${employee.getName()}"/></span>--%>
<%--</c:forEach>--%>
<%--<c:forEach items="${userService.findById(1)}" var="user">--%>
    <%--<span><c:out value="${employee.getUsername()}"/></span>--%>
<%--</c:forEach>--%>
</body>
</html>
