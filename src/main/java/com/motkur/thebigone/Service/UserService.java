package com.motkur.thebigone.Service;

import com.motkur.thebigone.Model.User;
import com.motkur.thebigone.Model.UserInfo;
import com.motkur.thebigone.Repository.*;
import com.motkur.thebigone.Service.Interface.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;


@Service
public class UserService implements IUserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private UserInfoRepository userInfoRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setCreatedOn(LocalDateTime.now());
        user.setLastLogin(user.getCreatedOn());

        UserInfo info = new UserInfo();
        user.setUserInfo(info);

        userInfoRepository.save(info);
        userRepository.save(user);
    }

    @Override
    public User getUser(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public UserInfo getUserInfo(User user) {
        return userInfoRepository.findUserInfoByUser(user);
    }

    @Override
    public void setUserInfo(User user, UserInfo info) {
        UserInfo old = getUserInfo(user);
        old.setName(info.getName());
        old.setSurname(info.getSurname());
        old.setAddress(info.getAddress());

        userInfoRepository.save(old);
    }
}
