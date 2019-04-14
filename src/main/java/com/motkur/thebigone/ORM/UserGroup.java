package com.motkur.thebigone.ORM;

import javax.persistence.*;

@Entity
@Table(name = "User_Groups")
public class UserGroup {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;
    @ManyToOne
    @JoinColumn(name = "group_id")
    private Group group;
}
