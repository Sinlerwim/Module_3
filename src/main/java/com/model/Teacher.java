package com.model;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Getter
@Setter
@Entity
public class Teacher extends Person {
    @Override
    public String toString() {
        return "Teacher{" +
                "id='" + id + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", age=" + age +
                ", subject=" + subject +
                '}';
    }

    @OneToOne
    @JoinColumn(name = "subject_id")
    private Subject subject;
}
