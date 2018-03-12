package com.example.demo.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;

@Entity
@Table(name = "departments")
@Getter
@Setter
@ToString
public class Department extends BaseEntity {
    @Column(name = "name")
    private String name;

    @JsonIgnore
    @ManyToMany
    @JoinTable(name = "employee_department",
            joinColumns = @JoinColumn(name = "department_id", referencedColumnName="id"),
            inverseJoinColumns = @JoinColumn(name = "employee_id", referencedColumnName="id"))
    @MapKeyColumn(name = "start_date")
    private Map<LocalDate, Employee> employeeMap = new HashMap<>();


}
