package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.Table;
import javax.persistence.Table;

@Entity
@Table(name = "northernreconstruction")
public class northernreconstruction {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int timeA;

    @Column(name = "northernReconst")
    public double northernReconst;

    public northernreconstruction() {
    }

    public northernreconstruction(int timeA, double northernReconst) {
        this.timeA = timeA;
        this.northernReconst = northernReconst;

    }
}
