package com.example.demo.model;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "status")
@Getter
@Setter
@ToString
public class Status extends BaseEntity {

    @Column(name = "description")
    private String description;
}
