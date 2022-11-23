package com.dbdata.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.Table;
import javax.persistence.Table;

@Entity
@Table(name = "coemisscountry")
public class coemisscountry {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int countryID;

    @Column(name = "code")
    public double code;

    @Column(name = "country")
    public double country;

    public coemisscountry() {
    }

    public coemisscountry(int countryID, double code, double country) {
        this.countryID = countryID;
        this.code = code;
        this.country = country;
    }
}