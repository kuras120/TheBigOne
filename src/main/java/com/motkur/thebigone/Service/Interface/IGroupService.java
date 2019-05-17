package com.motkur.thebigone.Service.Interface;

import com.motkur.thebigone.Model.Group;
import com.motkur.thebigone.Model.User;

public interface IGroupService {
    void save(User user, Group group, String name, boolean admin);

}
