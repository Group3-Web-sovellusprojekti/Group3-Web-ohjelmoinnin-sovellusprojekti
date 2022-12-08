package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_user")
    public Long idUser;
    @Column(name = "username")
    public String username;
    @Column(name = "password")
    public String password;

    public User() {
    }

    public User(String username, String pw) {
        this.username = username;
        this.password = pw;
    }

}