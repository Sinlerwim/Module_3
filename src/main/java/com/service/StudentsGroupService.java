package com.service;

import com.repository.StudentsGroupRepository;

public class StudentsGroupService {
    private static final StudentsGroupRepository REPOSITORY = StudentsGroupRepository.getInstance();

    public void printGroupFromDBByName(String name) {
        REPOSITORY.findByName(name).ifPresentOrElse(
                System.out::println,
                () -> System.out.println("Not found")
        );
    }

    public void printNumberOfStudentsInEachGroup() {
        REPOSITORY.getNumberOfStudentsInEachGroup().ifPresentOrElse(
                System.out::println,
                () -> System.out.println("Not found")
        );
    }

    public void printAverageGradeOfEachGroup() {
        REPOSITORY.getAverageGradeOfEachGroup().ifPresentOrElse(
                System.out::println,
                () -> System.out.println("Not found")
        );
    }
}
