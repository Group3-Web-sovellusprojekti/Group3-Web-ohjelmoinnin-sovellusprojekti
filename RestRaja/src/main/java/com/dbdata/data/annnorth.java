package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "annnorth")
public class annnorth {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int timeA;

    @Column(name = "north")
    public double north;

    @Column(name = "time")
    public double time;

    public annnorth() {
    }

    public annnorth(int timeA, double north, double time) {
        this.timeA = timeA;
        this.north = north;
        this.time = time;
    }
}
