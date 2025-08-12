package com.example.EmployeeJSP.controller;


import com.example.EmployeeJSP.model.Employee;
import com.example.EmployeeJSP.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;
import java.util.Optional;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeRepository employeeRepository;


    @GetMapping("/")
    public String showForm(Model model) {
        model.addAttribute("employee", new Employee());
        return "index"; // goes to index.jsp
    }


    @PostMapping("/addEmployee")
    public String addEmployee(@ModelAttribute Employee employee, Model model) {
        // find highest empId
        List<Employee> employees = employeeRepository.findAll();
        int nextId = employees.stream()
                .mapToInt(Employee::getEmpId)
                .max()
                .orElse(0) + 1;

        employee.setEmpId(nextId);

        employeeRepository.save(employee);
        model.addAttribute("message", "Employee saved successfully with ID: " + nextId);
        return "index";
    }




    @GetMapping("/displayAll")
    public String displayAllEmployees(Model model) {
        List<Employee> employees = employeeRepository.findAll();
        model.addAttribute("employees", employees);
        return "employees"; // goes to employees.jsp
    }


    @GetMapping("/display/{id}")
    public String displayEmployee(@PathVariable int id, Model model) {
        Employee emp = employeeRepository.findAll()
                .stream()
                .filter(e -> e.getEmpId() == id)
                .findFirst()
                .orElse(null);

        if (emp != null) {
            model.addAttribute("employee", emp);
        } else {
            model.addAttribute("message", "Employee not found");
        }
        return "employee";
    }

}
