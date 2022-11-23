package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.Table;
import javax.persistence.Table;

@Entity
@Table(name = "maunaloa")
public class maunaloa {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int YearC;

    @Column(name = "mean")
    public double mean;

    public maunaloa() {
    }

    public maunaloa(int YearC, double mean) {
        this.YearC = YearC;
        this.mean = mean;

    }
}