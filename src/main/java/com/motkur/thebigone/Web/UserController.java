package com.motkur.thebigone.Web;
import com.motkur.thebigone.Model.Group;
import com.motkur.thebigone.Model.UserInfo;
import com.motkur.thebigone.Service.Interface.IGroupService;
import com.motkur.thebigone.Service.Interface.ISecurityService;
import com.motkur.thebigone.Service.Interface.IUserService;
import com.motkur.thebigone.Validator.CreateGroupValidator;
import com.motkur.thebigone.Validator.JoinGroupValidator;
import com.motkur.thebigone.Validator.UserInfoValidator;
import com.motkur.thebigone.Model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {
    @Autowired
    private IUserService userService;
    @Autowired
    private ISecurityService securityService;
    @Autowired
    private UserInfoValidator userInfoValidator;

    @GetMapping("/welcome")
    public String welcome(Model model) {
        model.addAttribute("joinGroupForm", new Group());
        model.addAttribute("createGroupForm", new Group());

        String principalName = securityService.findLoggedInUsername();
        System.out.println(principalName);
        if (principalName != null) {
            User user = userService.getUser(principalName);
            model.addAttribute("groups", user.getGroups());
            model.addAttribute("userCreatedOn", user.getCreatedOn().toLocalDate());
        }

        return "welcome";
    }

    @GetMapping("/settings")
    public String settings(Model model) {
        UserInfo info = userService.getUser(securityService.findLoggedInUsername()).getUserInfo();

        model.addAttribute("userInfoForm", info);

        return "settings";
    }

    @PostMapping("/settings")
    public String settings(@ModelAttribute("userInfoForm") UserInfo userInfoForm, BindingResult bindingResult) {
        userInfoValidator.validate(userInfoForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "settings";
        }

        userService.setUserInfo(userService.getUser(securityService.findLoggedInUsername()), userInfoForm);
        return "settings";
    }

    @PostMapping("/settings/change_password")
    public String changePassword(String oldPassword, String newPassword, String confirmPassword) {

        return "settings";
    }

    @DeleteMapping("/settings")
    public String settings() {

        return "home";
    }
}
