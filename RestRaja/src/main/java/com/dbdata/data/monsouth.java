package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "monsouth")
public class monsouth {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public String timeB;

    @Column(name = "south")
    public double south;

    @Column(name = "time")
    public double time;

    public monsouth() {
    }

    public monsouth(String timeB, double south, double time) {
        this.timeB = timeB;
        this.south = south;
        this.time = time;
    }
}