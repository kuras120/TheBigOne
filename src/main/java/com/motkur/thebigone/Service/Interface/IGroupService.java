package com.motkur.thebigone.Service.Interface;

import com.motkur.thebigone.Model.Group;
import com.motkur.thebigone.Model.User;

public interface IGroupService {
    Group get(Group group);
    void create(User user, Group group);
    void join(User user, Group group);

}
