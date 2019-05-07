package com.motkur.thebigone.Service.Interface;

import com.motkur.thebigone.Model.User;

public interface IUserService {
    void save(User user);
    User findByUsername(String username);
}
