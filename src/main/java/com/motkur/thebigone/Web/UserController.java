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

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "jsp/registration";
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "jsp/registration";
        }

        userForm.setCreatedOn(LocalDateTime.now());
        userForm.setLastLogin(userForm.getCreatedOn());
        userService.save(userForm);
        groupService.save(userForm, null, "TestGruppe", true);
        groupService.save(userForm, null, "MeinFührer", true);

        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/welcome";
    }

    @GetMapping("/login")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "jsp/login";
    }

    @GetMapping({"/", "/welcome"})
    public String welcome(Model model) {
        User user = userService.findByUsername("kuras120");
        if (user != null) {
            model.addAttribute("groups", user.getGroups());
            model.addAttribute("userCreatedOn", user.getCreatedOn().toLocalDate());
        }
        return "jsp/welcome";
    }
}
