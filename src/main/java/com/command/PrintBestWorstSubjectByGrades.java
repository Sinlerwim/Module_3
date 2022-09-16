package com.command;

import com.model.Subject;
import com.repository.SubjectRepository;
import com.service.SubjectService;

public class PrintBestWorstSubjectByGrades implements Command {
    public static final SubjectService SERVICE = new SubjectService();

    @Override
    public void execute() {
        System.out.println("Subject with best grades:");
        SERVICE.printSubjectWithBestGrades();
        System.out.println("Subject with worst grades:");
        SERVICE.printSubjectWithWorstGrades();
    }
}
