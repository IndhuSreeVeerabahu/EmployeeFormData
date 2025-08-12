package com.example.EmployeeJSP.model;


import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "employees")
public class Employee {

    @Id
    private String id;

    private int empId;

    private String employeeName;
    private String employeeEmail;
    private String employeeLocation;

    // Default constructor
    public Employee() {}

    // Constructor with fields
    public Employee(int empId, String employeeName, String employeeEmail, String employeeLocation) {
        this.empId = empId;
        this.employeeName = employeeName;
        this.employeeEmail = employeeEmail;
        this.employeeLocation = employeeLocation;
    }


    public String getId() {
        return id;
    }


    public int getEmpId() {
        return empId;
    }

    public void setEmpId(int empId) {
        this.empId = empId;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getEmployeeEmail() {
        return employeeEmail;
    }

    public void setEmployeeEmail(String employeeEmail) {
        this.employeeEmail = employeeEmail;
    }

    public String getEmployeeLocation() {
        return employeeLocation;
    }

    public void setEmployeeLocation(String employeeLocation) {
        this.employeeLocation = employeeLocation;
    }
}
