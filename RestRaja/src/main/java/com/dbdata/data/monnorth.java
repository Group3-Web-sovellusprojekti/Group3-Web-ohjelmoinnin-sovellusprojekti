package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "monnorth")
public class monnorth {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public String timeB;

    @Column(name = "north")
    public double north;

    @Column(name = "time")
    public double time;

    public monnorth() {
    }

    public monnorth(String timeB, double north, double time) {
        this.timeB = timeB;
        this.north = north;
        this.time = time;
    }
}