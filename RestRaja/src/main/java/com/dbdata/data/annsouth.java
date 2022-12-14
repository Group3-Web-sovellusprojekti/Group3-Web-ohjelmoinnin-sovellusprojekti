package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "annsouth")
public class annsouth {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public String timeA;

    @Column(name = "south")
    public double south;

    @Column(name = "time")
    public double time;

    public annsouth() {
    }

    public annsouth(String timeA, double south, double time) {
        this.timeA = timeA;
        this.south = south;
        this.time = time;
    }
}
