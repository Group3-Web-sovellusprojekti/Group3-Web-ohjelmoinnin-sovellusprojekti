package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.Table;
import javax.persistence.Table;

@Entity
@Table(name = "evolutiontemp")
public class evolutiontemp {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int time;

    @Column(name = "temp")
    public double temp;

    public evolutiontemp() {
    }

    public evolutiontemp(int time, double temp) {
        this.time = time;
        this.temp = temp;
    }
}