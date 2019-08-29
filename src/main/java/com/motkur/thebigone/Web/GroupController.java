package com.motkur.thebigone.Web;

import com.motkur.thebigone.Model.Group;
import com.motkur.thebigone.Model.User;
import com.motkur.thebigone.Service.Interface.IGroupService;
import com.motkur.thebigone.Service.Interface.ISecurityService;
import com.motkur.thebigone.Service.Interface.IUserService;
import com.motkur.thebigone.Validator.CreateGroupValidator;
import com.motkur.thebigone.Validator.JoinGroupValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class GroupController {
    @Autowired
    private IUserService userService;
    @Autowired
    private IGroupService groupService;
    @Autowired
    private ISecurityService securityService;
    @Autowired
    private JoinGroupValidator joinGroupValidator;
    @Autowired
    private CreateGroupValidator createGroupValidator;


    @PostMapping("/join_group")
    public String joinGroup(@ModelAttribute("joinGroupForm") Group joinGroupForm, BindingResult bindingResult) {
        joinGroupValidator.validate(joinGroupForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "redirect:/welcome";
        }

        User user = userService.getUser(securityService.findLoggedInUsername());
        groupService.join(user, groupService.get(joinGroupForm));

        return "redirect:/lists";
    }

    @PostMapping("/create_group")
    public String createGroup(@ModelAttribute("createGroupForm") Group createGroupForm, BindingResult bindingResult) {
        createGroupValidator.validate(createGroupForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "redirect:/welcome";
        }

        User user = userService.getUser(securityService.findLoggedInUsername());
        groupService.create(user, createGroupForm);

        return "redirect:/lists";
    }
}
