package com.motkur.thebigone.Repository;

import com.motkur.thebigone.Model.UserGroup;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserGroupRepository extends JpaRepository<UserGroup, Long> {
    List<UserGroup> findAllByUserId(long id);
}
