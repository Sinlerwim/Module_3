package com.command;

import com.service.StudentsGroupService;
import com.util.UserInputUtil;

public class PrintAverageGradeOfEachGroup implements Command {
    private static final StudentsGroupService SERVICE = new StudentsGroupService();
    @Override
    public void execute() {
        System.out.println("Average grade of each group:");
        SERVICE.printAverageGradeOfEachGroup();
    }
}
