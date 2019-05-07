package com.motkur.thebigone.Service;

import com.motkur.thebigone.Model.User;
import com.motkur.thebigone.Repository.GroupRepository;
import com.motkur.thebigone.Repository.UserRepository;
import com.motkur.thebigone.Service.Interface.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class UserService implements IUserService {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private GroupRepository groupRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setGroups(new ArrayList<>(groupRepository.findAll()));
        userRepository.save(user);
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByLogin(username);
    }
}
