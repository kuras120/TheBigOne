package com.motkur.thebigone.ORM;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "Users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String login;
    @Column(name = "hashed_password")
    private String hashedPassword;
    private String salt;
    @Column(name = "created_on")
    private LocalDateTime createdOn;
    @Column(name = "last_login")
    private LocalDateTime lastLogin;
}
