package com.motkur.thebigone.Service.Interface;

import com.motkur.thebigone.Model.Group;
import com.motkur.thebigone.Model.User;

public interface IGroupService {
    Group get(String name, String password);
    void create(User user, Group group);
    void join(User user, Group group);

}
