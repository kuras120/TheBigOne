package com.motkur.thebigone.Repository;

import com.motkur.thebigone.Model.Task;
import com.motkur.thebigone.Model.UserGroup;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TaskRepository extends JpaRepository<Task, Long> {
    List<Task> getTasksByUserFromGroup(UserGroup userGroup);
}
