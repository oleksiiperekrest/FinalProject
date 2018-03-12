package com.example.demo.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;

@Entity
@Table(name = "events")
@Getter
@Setter
@ToString
public class Event extends BaseEntity {
    @Column(name = "name")
    private String name;

    @Column(name = "start_date")
    private LocalDate startDate;

    @ElementCollection
    @JoinTable(name = "events_employees")
    @MapKeyColumn(name = "employee_id")
    private Map<Employee, Integer> employeesHoursMap = new HashMap<>();
}
