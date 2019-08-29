package com.motkur.thebigone.Validator;

import com.motkur.thebigone.Model.Group;
import com.motkur.thebigone.Model.User;
import com.motkur.thebigone.Model.UserGroup;
import com.motkur.thebigone.Service.Interface.IGroupService;
import com.motkur.thebigone.Service.Interface.ISecurityService;
import com.motkur.thebigone.Service.Interface.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class JoinGroupValidator implements Validator {
    @Autowired
    private IGroupService groupService;
    @Autowired
    private IUserService userService;
    @Autowired
    private ISecurityService securityService;

    @Override
    public boolean supports(Class<?> aClass) {
        return Group.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Group group = (Group) o;
        User user = userService.getUser(securityService.findLoggedInUsername());

        System.out.println(group.getName());
        System.out.println(group.getPassword());

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
        if (groupService.get(group) == null) {
            errors.rejectValue("name", "NotFound.joinGroupForm.name");
            System.out.println("not found");
        }

        for (UserGroup userGroup:user.getGroups()) {
            if (userGroup.getGroup().getName().equals(group.getName())) {
                errors.rejectValue("name", "AlreadyIn.joinGroupForm.name");
                System.out.println("already in");
            }
        }
    }
}