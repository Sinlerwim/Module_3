package com.command;

import com.service.TeacherService;
import com.util.UserInputUtil;

public class FindTeacherByName implements Command {
    private static final TeacherService SERVICE = new TeacherService();

    @Override
    public void execute() {
        String targetTeacherFirstName = UserInputUtil.getUserInput("Input teacher's first name:");
        String targetTeacherLastName = UserInputUtil.getUserInput("Input teacher's last name:");
        SERVICE.printTeacherFromDBByName(targetTeacherFirstName, targetTeacherLastName);
    }
}
