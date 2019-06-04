package com.motkur.thebigone.Validator;

import com.motkur.thebigone.Model.Group;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class CreateGroupValidator implements Validator {
    @Override
    public boolean supports(Class<?> aClass) {
        return Group.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Group group = (Group) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "passwordConfirm", "NotEmpty");

        if (!group.getPasswordConfirm().equals(group.getPassword())) {
            errors.rejectValue("passwordConfirm", "Diff.createGroupForm.passwordConfirm");
        }
    }
}
