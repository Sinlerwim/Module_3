package com.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;


@Getter
@Setter
@Entity
@ToString
public class Grade {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "UUID")
    @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
    private String id;


    @ManyToOne
    @JoinColumn(name = "subject_id")
    private Subject subject;

    private int value;

    @OneToOne
    @JoinColumn(name = "student_id")
    private Student student;
}
