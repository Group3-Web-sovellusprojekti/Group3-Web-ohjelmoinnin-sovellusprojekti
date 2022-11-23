package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.Table;
import javax.persistence.Table;

@Entity
@Table(name = "emisssector")
public class emisssector {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int sector;

    @Column(name = "share")
    public double share;

    public emisssector() {
    }

    public emisssector(int sector, double share) {
        this.sector = sector;
        this.share = share;
    }
}
