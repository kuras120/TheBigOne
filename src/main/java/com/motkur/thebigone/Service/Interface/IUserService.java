package com.motkur.thebigone.Service.Interface;

import com.motkur.thebigone.Model.User;
import com.motkur.thebigone.Model.UserInfo;

public interface IUserService {
    void save(User user);
    User getUser(String username);
    UserInfo getUserInfo(User user);
    void setUserInfo(User user, UserInfo info);
}
