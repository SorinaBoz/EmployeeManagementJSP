package com.sda.servlet;

import com.sda.dao.EmployeeDao;
import com.sda.model.Department;
import com.sda.model.Employee;
import com.sda.model.User;
import com.sda.service.DepartmentService;
import com.sda.service.EmployeeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(value = "/employees")
public class Employees extends HttpServlet {

    private EmployeeDao employeeDao = new EmployeeDao();
    private EmployeeService employeeService = new EmployeeService();
    private DepartmentService departmentService = new DepartmentService();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Employee employee = employeeDao.getEntityById(Employee.class, 1L);
        response.getWriter().println("Hello World!");
//        request.getRequestDispatcher("employees.jsp").forward(request, response);
    }



//    @Override
//    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
////        LocalDate date = LocalDate.parse(request.getParameter("hiredate"));
//        Employee employee = new Employee();
//        Department department = departmentService.findById(Long.parseLong(request.getParameter("depid")));
//        employee.setName(request.getParameter("name"));
//        employee.setDepartment(department);
//        employee.setManager(request.getParameter("manager"));
////
//        employeeService.createEmployee(employee);
//
//        if (employee != null) {
//            response.sendRedirect("employees.jsp");
//
//        } else
//            response.sendRedirect("invalidEmployee.jsp"); //error page
//
//    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Employee employee = new Employee();
        Department department = departmentService.findById(Long.parseLong(request.getParameter("depid")));
        Employee manager = employeeService.findById(Long.parseLong(request.getParameter("empid")));

        employee.setName(request.getParameter("name"));
        employee.setDepartment(department);
        employee.setManager(manager);

        employeeService.createEmployee(employee);

        if (employee != null) {
            response.sendRedirect("employees.jsp");

        } else
            response.sendRedirect("invalidEmployee.jsp"); //error page
        }

}


