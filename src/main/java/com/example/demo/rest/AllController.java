package com.example.demo.rest;

import com.example.demo.model.BaseEntity;
import com.example.demo.model.Department;
import com.example.demo.model.Employee;
import com.example.demo.service.DepartmentService;
import com.example.demo.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping(value = "api/all")
public class AllController {

    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private DepartmentService departmentService;

    @RequestMapping(value = "", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseEntity<List<List<? extends BaseEntity>>> listAll() {

        List<Employee> employees = this.employeeService.listAll();
        List<Department> departments = this.departmentService.listAll();

        List<List<? extends BaseEntity>> allList = new ArrayList<>();

        allList.add(employees);
        allList.add(departments);

        return new ResponseEntity<>(allList, HttpStatus.OK);
    }
}
