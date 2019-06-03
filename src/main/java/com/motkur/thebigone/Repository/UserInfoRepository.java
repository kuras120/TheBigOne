package com.motkur.thebigone.Repository;

import com.motkur.thebigone.Model.User;
import com.motkur.thebigone.Model.UserInfo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserInfoRepository extends JpaRepository<UserInfo, Long> {
    UserInfo findUserInfoByUser(User user);
}
