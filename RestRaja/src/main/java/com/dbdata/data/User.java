package com.dbdata.data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User {
    @Id
    public String username;
    public String password;
    public int status;

    public User() {
    }

    public User(String username, String pw) {
        this.username = username;
        this.password = pw;
    }

    public User(String username, int status) {
        this.username = username;
        this.status = status;
    }

}