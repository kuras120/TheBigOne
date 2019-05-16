package com.motkur.thebigone.Model;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "Salary")
public class Salary {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private int salary;
    @Column(name = "date_begin")
    private LocalDate dateBegin;
    @Column(name = "date_end")
    private LocalDate dateEnd;
    @ManyToOne
    @JoinColumn(name = "users_groups_id")
    private UserGroup userFromGroup;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public LocalDate getDateBegin() {
        return dateBegin;
    }

    public void setDateBegin(LocalDate dateBegin) {
        this.dateBegin = dateBegin;
    }

    public LocalDate getDateEnd() {
        return dateEnd;
    }

    public void setDateEnd(LocalDate dateEnd) {
        this.dateEnd = dateEnd;
    }

    public UserGroup getUserFromGroup() {
        return userFromGroup;
    }

    public void setUserFromGroup(UserGroup userFromGroup) {
        this.userFromGroup = userFromGroup;
    }
}
