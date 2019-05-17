package com.motkur.thebigone.Repository;

import com.motkur.thebigone.Model.Task;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TaskRepository extends JpaRepository<Task, Long> {
}
