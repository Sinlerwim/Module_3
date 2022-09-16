package com.command;

import com.service.StudentsGroupService;
import com.util.UserInputUtil;

public class PrintNumberOfStudentsInEachGroup implements Command {
    private static final StudentsGroupService SERVICE = new StudentsGroupService();
    @Override
    public void execute() {
        System.out.println("Number of students in each group:");
        SERVICE.printNumberOfStudentsInEachGroup();
    }
}
