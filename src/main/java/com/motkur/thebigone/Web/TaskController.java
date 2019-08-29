package com.motkur.thebigone.Web;
import com.motkur.thebigone.Model.Group;
import com.motkur.thebigone.Model.Task;
import com.motkur.thebigone.Model.User;
import com.motkur.thebigone.Service.Interface.IGroupService;
import com.motkur.thebigone.Service.Interface.ISecurityService;
import com.motkur.thebigone.Service.Interface.ITaskService;
import com.motkur.thebigone.Service.Interface.IUserService;
import com.motkur.thebigone.Validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class TaskController {
    @Autowired
    private IUserService userService;

    @Autowired
    private IGroupService groupService;

    @Autowired
    private ITaskService taskService;

    @Autowired
    private ISecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @GetMapping("/lists")
    public String lists(Model model) {
        User user = userService.getUser(securityService.findLoggedInUsername());
        model.addAttribute("groups", user.getGroups());

        return "lists";
    }

    @PostMapping("/lists")
    public String lists(@ModelAttribute("userForm") User userForm) {
        return "lists";
    }

    @PutMapping("/lists")
    public String lists(@ModelAttribute("userForm") User userForm, Model model) {
        return "lists";
    }

    @GetMapping("/lists/{name}")
    public String editList(@PathVariable("name") String name, Model model) {
        model.addAttribute("groupName", name);

        return "editList";
    }

    @GetMapping("/lists/{name}/{month}")
    public String editMonth(@PathVariable("name") String name, @PathVariable("month") String month, Model model) {
        User user = userService.getUser(securityService.findLoggedInUsername());
        Group group = new Group();
        group.setName(name);
        List<Task> tasks = taskService.getTasks(user, group);
        model.addAttribute("tasks", tasks);
        model.addAttribute("groupName", name);
        model.addAttribute("month", month);

        return "editMonth";
    }

    @GetMapping("/lists/{name}/manage")
    public String manageList(@PathVariable("name") String name, Model model) {
        model.addAttribute("groupName", name);
        return "manageList";
    }
}
