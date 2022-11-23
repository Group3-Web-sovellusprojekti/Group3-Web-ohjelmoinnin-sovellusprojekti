package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.Table;
import javax.persistence.Table;

@Entity
@Table(name = "humanevo")
public class humanevo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int yearsAgo;

    @Column(name = "event")
    public double event;

    public humanevo() {
    }

    public humanevo(int yearsAgo, double event) {
        this.yearsAgo = yearsAgo;
        this.event = event;

    }
}
