package com.sda.model;

import javax.persistence.*;

@Entity
@Table(name="employees")
public class Employee {
    @ManyToOne
    @JoinColumn(name="department_id", nullable=false)
    private Department department;

    @Id
    @Column(name = "employee_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", length = 40)
    private String name;

    @Column(name = "manager", length = 40)
    private String manager;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


}
