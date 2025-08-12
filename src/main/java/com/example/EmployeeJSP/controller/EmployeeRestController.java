package com.example.EmployeeJSP.controller;

import com.example.EmployeeJSP.model.Employee;
import com.example.EmployeeJSP.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/employees")
public class EmployeeRestController {

    @Autowired
    private EmployeeRepository employeeRepository;


    @GetMapping
    public List<Employee> getAllEmployees() {
        return employeeRepository.findAll();
    }


    @GetMapping("/{id}")
    public Employee getEmployeeById(@PathVariable int id) {
        return employeeRepository.findAll()
                .stream()
                .filter(e -> e.getEmpId() == id)
                .findFirst()
                .orElse(null);
    }


    @PostMapping
    public Employee createEmployee(@RequestBody Employee employee) {
        int nextId = employeeRepository.findAll()
                .stream()
                .mapToInt(Employee::getEmpId)
                .max()
                .orElse(0) + 1;

        employee.setEmpId(nextId);
        return employeeRepository.save(employee);
    }



}
