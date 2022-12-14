package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "northernreconstruction", schema= "ilmastoteht")
public class northernreconstruction {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public String timeA;
    
    @Column(name = "northern_reconst")
    public double northern_reconst;


    public northernreconstruction() {
    }

    public northernreconstruction(String timeA, double northern_reconst) {
        this.timeA = timeA;
        this.northern_reconst = northern_reconst;


    }
}
