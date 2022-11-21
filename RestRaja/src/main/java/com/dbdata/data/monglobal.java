package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "monglobal")
public class monglobal {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int timeA;

    @Column(name = "global")
    public double global;

    @Column(name = "time")
    public double time;

    public monglobal() {
    }

    public monglobal(int timeA, double global, double time) {
        this.timeA = timeA;
        this.global = global;
        this.time = time;
    }
}