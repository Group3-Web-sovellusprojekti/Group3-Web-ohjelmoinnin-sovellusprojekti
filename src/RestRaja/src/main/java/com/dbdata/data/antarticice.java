package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.Table;
import javax.persistence.Table;

@Entity
@Table(name = "antarticice")
public class antarticice {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int airAge;

    @Column(name = "co2_pmm")
    public double co2_pmm;

    public antarticice() {
    }

    public antarticice(int airAge, double co2_pmm) {
        this.airAge = airAge;
        this.co2_pmm = co2_pmm;
    }
}