package com.motkur.thebigone.Service;

import com.motkur.thebigone.Model.Group;
import com.motkur.thebigone.Model.User;
import com.motkur.thebigone.Model.UserGroup;
import com.motkur.thebigone.Repository.GroupRepository;
import com.motkur.thebigone.Repository.UserGroupRepository;
import com.motkur.thebigone.Service.Interface.IGroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

@Service
public class GroupService implements IGroupService {
    @Autowired
    private UserGroupRepository userGroupRepository;
    @Autowired
    private GroupRepository groupRepository;

    @Override
    public void save(User user, Group group, String name, boolean admin) {
        if (admin) {
            if (group == null) group = new Group();
            group.setName(name);
            group.setCreatedBy(user);
            group.setCreatedOn(LocalDateTime.now());

            groupRepository.save(group);
        }
        UserGroup userGroup = new UserGroup();
        userGroup.setUser(user);
        userGroup.setGroup(group);

        userGroupRepository.save(userGroup);
    }
}
