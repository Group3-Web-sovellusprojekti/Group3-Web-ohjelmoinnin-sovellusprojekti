package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.Table;
import javax.persistence.Table;

@Entity
@Table(name = "lawdome3")
public class lawdome3 {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int airAge;

    @Column(name = "mixRat")
    public double mixRat;

    public lawdome3() {
    }

    public lawdome3(int airAge, double mixRat) {
        this.airAge = airAge;
        this.mixRat = mixRat;

    }
}
