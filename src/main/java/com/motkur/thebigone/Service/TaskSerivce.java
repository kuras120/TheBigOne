package com.motkur.thebigone.Service;

import com.motkur.thebigone.Model.Group;
import com.motkur.thebigone.Model.Task;
import com.motkur.thebigone.Model.User;
import com.motkur.thebigone.Model.UserGroup;
import com.motkur.thebigone.Repository.TaskRepository;
import com.motkur.thebigone.Repository.UserGroupRepository;
import com.motkur.thebigone.Service.Interface.ITaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TaskSerivce implements ITaskService {
    @Autowired
    TaskRepository taskRepository;
    @Autowired
    UserGroupRepository userGroupRepository;

    @Override
    public List<Task> getTasks(User user, Group group) {
        for (UserGroup userGroup:userGroupRepository.findAllByUserId(user.getId())) {
            if (userGroup.getGroup().getName().equals(group.getName())) {
                return taskRepository.getTasksByUserFromGroup(userGroup);
            }
        }
        return null;
    }
}
