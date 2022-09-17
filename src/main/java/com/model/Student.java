package com.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Getter
@Setter
@Entity
@ToString
public class Student extends Person {
    private LocalDate admissionDate;

    @ManyToOne
    @JoinColumn(name = "studentsgroup_id")
    private StudentsGroup studentsGroup;
}
