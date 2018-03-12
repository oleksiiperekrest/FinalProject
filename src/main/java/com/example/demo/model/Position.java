package com.example.demo.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "positions")
@Getter
@Setter
@ToString
public class Position extends BaseEntity {

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;
}
