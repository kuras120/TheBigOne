package com.motkur.thebigone.Service;

import com.motkur.thebigone.Model.Group;
import com.motkur.thebigone.Model.User;
import com.motkur.thebigone.Model.UserGroup;
import com.motkur.thebigone.Repository.GroupRepository;
import com.motkur.thebigone.Repository.UserGroupRepository;
import com.motkur.thebigone.Service.Interface.IGroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
public class GroupService implements IGroupService {
    @Autowired
    private UserGroupRepository userGroupRepository;
    @Autowired
    private GroupRepository groupRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public Group get(String name, String password) {
        Group group = groupRepository.findByName(name);
        if (group.getPassword().equals(bCryptPasswordEncoder.encode(password))) return group;
        else return null;
    }

    @Override
    public void create(User user, Group group) {
        group.setPassword(bCryptPasswordEncoder.encode(group.getPassword()));
        group.setCreatedOn(LocalDateTime.now());
        group.setCreatedBy(user);

        groupRepository.save(group);

        join(user, group);
    }

    @Override
    public void join(User user, Group group) {
        UserGroup userGroup = new UserGroup();
        userGroup.setUser(user);
        userGroup.setGroup(group);

        userGroupRepository.save(userGroup);
    }
}
