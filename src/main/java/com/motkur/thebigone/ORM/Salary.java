package com.motkur.thebigone.ORM;

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
    @JoinColumn(name = "user_group_id")
    private UserGroup userFromGroup;
}
