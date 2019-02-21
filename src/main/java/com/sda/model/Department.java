package com.sda.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="department")
public class Department {
    @OneToMany(mappedBy="department")
    private List<Employee> employees;


        @Id
        @Column(name = "department_id")
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Long id;

        @Column(name = "department", length = 40)
        private String department;


    public List<Employee> getEmployees() {
        return employees;
    }

    public void setEmployees(List<Employee> employees) {
        this.employees = employees;
    }

    public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public String getDepartmentName() {
            return department;
        }

        public void setDepartmentName(String department) {
            this.department = department;
        }

        }

