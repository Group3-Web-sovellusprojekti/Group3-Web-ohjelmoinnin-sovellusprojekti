package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "annglobal")
public class annglobal {
    @Id
    @Column(name = "timeA")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int timeA;

    @Column(name = "global")
    public double global;

    @Column(name = "time")
    public int time;

    public annglobal() {
    }

    public annglobal(int timeA, double global, int time) {
        this.timeA = timeA;
        this.global = global;
        this.time = time;
    }
}