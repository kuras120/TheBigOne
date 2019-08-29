package com.motkur.thebigone.Service.Interface;

import com.motkur.thebigone.Model.Group;
import com.motkur.thebigone.Model.Task;
import com.motkur.thebigone.Model.User;

import java.util.List;

public interface ITaskService {
    List<Task> getTasks(User user, Group group);
}
