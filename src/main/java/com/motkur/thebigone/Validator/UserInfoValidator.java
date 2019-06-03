package com.motkur.thebigone.Validator;

import com.motkur.thebigone.Model.UserInfo;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class UserInfoValidator implements Validator {
    @Override
    public boolean supports(Class<?> aClass) {
        return UserInfo.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        UserInfo info = (UserInfo) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "surname", "NotEmpty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "NotEmpty");
    }
}
