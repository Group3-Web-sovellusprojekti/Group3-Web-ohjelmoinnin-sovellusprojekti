package com.dbdata.data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.Table;
import javax.persistence.Table;

@Entity
@Table(name = "testtable")
public class TestTable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int time;
    public double anomaly;
    public double lowerconf;
    public double upperconf;

    public TestTable() {
    }

    public TestTable(int time, double anomaly, double lowerconf, double upperconf) {
        this.time = time;
        this.anomaly = anomaly;
        this.lowerconf = lowerconf;
        this.upperconf = upperconf;
    }

}
