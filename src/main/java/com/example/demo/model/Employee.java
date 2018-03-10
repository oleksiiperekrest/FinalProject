package com.example.demo.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;

@Entity
@Table(name = "employees")
@Getter
@Setter
@ToString
public class Employee extends BaseEntity {
    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @ManyToMany
    @JoinTable(name = "employee_department",
            joinColumns = @JoinColumn(name = "employee_id", referencedColumnName="id"),
    inverseJoinColumns = @JoinColumn(name = "department_id", referencedColumnName="id"))
    @MapKeyColumn(name = "start_date")
    private Map<LocalDate, Department> departmentMap = new HashMap<>();

    @ElementCollection
    @JoinTable(name = "employee_position")
    @MapKeyColumn(name = "start_date")
    @Column(name = "position")
    private Map<LocalDate, String> positionMap = new HashMap<>();

    @ElementCollection
    @JoinTable(name = "employee_salary")
    @MapKeyColumn(name = "start_date")
    @Column(name = "salary")
    private Map<LocalDate, BigDecimal> salaryMap = new HashMap<>();

    @ManyToMany
    @JoinTable(name = "employee_status",
            joinColumns = @JoinColumn(name = "employee_id", referencedColumnName="id"),
            inverseJoinColumns = @JoinColumn(name = "status_id", referencedColumnName="id"))
    @MapKeyColumn(name = "date")
    private Map<LocalDate, Status> statusMap = new HashMap<>();

}
