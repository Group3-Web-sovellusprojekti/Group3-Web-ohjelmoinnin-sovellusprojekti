package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.Table;
import javax.persistence.Table;

@Entity
@Table(name = "coemissmtc")
public class coemissmtc {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int year;

    @Column(name = "country")
    public double country;

    @Column(name = "mtc")
    public double mtc;

    public coemissmtc() {
    }

    public coemissmtc(int year, double country, double mtc) {
        this.year = year;
        this.country = country;
        this.mtc = mtc;
    }
}