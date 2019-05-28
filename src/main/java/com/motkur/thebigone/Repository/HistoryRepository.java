package com.motkur.thebigone.Repository;

import com.motkur.thebigone.Model.History;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HistoryRepository extends JpaRepository<History, Long> {
}
