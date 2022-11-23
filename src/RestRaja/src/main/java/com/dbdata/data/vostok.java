package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.Table;
import javax.persistence.Table;

@Entity
@Table(name = "vostok")
public class vostok {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int airAge;

    @Column(name = "coConse")
    public double coConse;

    public vostok() {
    }

    public vostok(int airAge, double coConse) {
        this.airAge = airAge;
        this.coConse = coConse;

    }
}
