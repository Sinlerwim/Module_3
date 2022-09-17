package com.service;

import com.repository.StudentRepository;

public class StudentService {
    private static final StudentRepository REPOSITORY = StudentRepository.getInstance();

    public void printStudentsWithGradesHigherThan(Double bound) {
        REPOSITORY.findStudentsWithGradesHigherThan(bound).ifPresentOrElse(
                System.out::println,
                () -> System.out.println("Not found")
        );
    }
}
