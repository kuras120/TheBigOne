package com.motkur.thebigone.Model;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Objects;

@Entity
@Table(name = "Tasks")
public class Task {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String name;
    private String description;
    @Column(name = "started_on")
    private LocalDateTime startedOn;
    @Column(name = "ended_on")
    private LocalDateTime endedOn;
    @ManyToOne
    @JoinColumn(name = "user_from_group")
    private UserGroup userFromGroup;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDateTime getStartedOn() {
        return startedOn;
    }

    public void setStartedOn(LocalDateTime startedOn) {
        this.startedOn = startedOn;
    }

    public LocalDateTime getEndedOn() {
        return endedOn;
    }

    public void setEndedOn(LocalDateTime endedOn) {
        this.endedOn = endedOn;
    }

    public UserGroup getUserFromGroup() {
        return userFromGroup;
    }

    public void setUserFromGroup(UserGroup userFromGroup) {
        this.userFromGroup = userFromGroup;
    }
}
