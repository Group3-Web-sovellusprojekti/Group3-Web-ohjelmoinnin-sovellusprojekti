package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.Table;
import javax.persistence.Table;

@Entity
@Table(name = "evolutionco")
public class evolutionco {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int time;

    @Column(name = "co2_pmm")
    public double co2_pmm;

    public evolutionco() {
    }

    public evolutionco(int time, double co2_pmm) {
        this.time = time;
        this.co2_pmm = co2_pmm;

    }
}
