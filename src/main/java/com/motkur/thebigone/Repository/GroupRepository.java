package com.motkur.thebigone.Repository;

import com.motkur.thebigone.Model.Group;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GroupRepository extends JpaRepository<Group, Long> {
    Group findByName(String name);
}
