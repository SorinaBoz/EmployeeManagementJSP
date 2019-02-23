package com.sda.service;

import com.sda.dao.EmployeeDao;
import com.sda.dao.GenericDao;
import com.sda.model.Employee;

import java.util.List;

public class EmployeeService {

    private EmployeeDao employeeDao = new EmployeeDao();
    private GenericDao genericDao = new GenericDao<>();


    public Employee findById(Long id){
        return employeeDao.getEntityById(Employee.class, id);
    }
    public List <Employee> getAll() {return employeeDao.getAllEmployees();}
    public void createEmployee(Employee employee){employeeDao.createEntity(employee);}
}
