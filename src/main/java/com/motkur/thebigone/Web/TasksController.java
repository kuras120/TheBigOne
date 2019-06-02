package com.motkur.thebigone.Web;
import com.motkur.thebigone.Model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

@Controller
public class TasksController {

    @GetMapping("/lists")
    public String lists(Model model) {
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

    @GetMapping("/lists/name")
    public String editList(Model model) {
        return "editList";
    }

    @GetMapping("/lists/name/month")
    public String editMonth(Model model) {
        return "editMonth";
    }
}
