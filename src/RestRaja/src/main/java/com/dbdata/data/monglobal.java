package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.Table;
import javax.persistence.Table;

@Entity
@Table(name = "monglobal")
public class monglobal {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int time;

    @Column(name = "Anomaly (deg C)")
    public double anomaly;

    @Column(name = "Lower confidence limit (2.5%)")
    public double lowerconf;

    @Column(name = "Upper confidence limit (97.5%)")
    public double upperconf;

    public monglobal() {
    }

    public monglobal(int time, double anomaly, double lowerconf, double upperconf) {
        this.time = time;
        this.anomaly = anomaly;
        this.lowerconf = lowerconf;
        this.upperconf = upperconf;
    }
}