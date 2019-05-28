package com.motkur.thebigone.Web;

import com.motkur.thebigone.Service.Interface.IGroupService;
import com.motkur.thebigone.Service.Interface.ISecurityService;
import com.motkur.thebigone.Service.Interface.IUserService;
import com.motkur.thebigone.Validator.UserValidator;
import com.motkur.thebigone.Model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.time.LocalDateTime;

@Controller
public class UserController {
    @Autowired
    private IUserService userService;

    @Autowired
    private IGroupService groupService;

    @Autowired
    private ISecurityService securityService;

    @Autowired
    private UserValidator userValidator;


    @GetMapping("/settings")
    public String settings(Model model) {
        User currentUser = userService.findByUsername(securityService.findLoggedInUsername());
        return "settings";
    }

    @PostMapping("/settings")
    public String settings(@ModelAttribute("userForm") User userForm) {
        return "settings";
    }

    @GetMapping("/lists")
    public String lists(Model model) {

        return "lists";
    }

}
