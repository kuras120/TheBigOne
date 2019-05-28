package com.motkur.thebigone.Repository;

import com.motkur.thebigone.Model.Salary;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SalaryRepository extends JpaRepository<Salary, Long> {
}
