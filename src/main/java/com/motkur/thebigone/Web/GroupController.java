package com.motkur.thebigone.Web;

import com.motkur.thebigone.Model.Group;
import com.motkur.thebigone.Service.Interface.ISecurityService;
import com.motkur.thebigone.Service.Interface.IUserService;
import com.motkur.thebigone.Validator.UserInfoValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class GroupController {
    @Autowired
    private IUserService userService;
    @Autowired
    private ISecurityService securityService;
    @Autowired
    private UserInfoValidator userInfoValidator;

    @PostMapping("/create_group")
    public String createGroup(@ModelAttribute("groupForm")Group group) {

        return "/lists";
    }
}
