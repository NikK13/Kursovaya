package com.app.webapp.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "STAVKA")
public class Stavka {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private double stavka;
    private Integer months;
    //private double result;

    public Stavka() {
    }

    public Stavka(double stavka, Integer months) {
        this.stavka = stavka;
        this.months = months;
    }

    public Stavka(Integer id, double stavka, Integer months, double res) {
        this.id = id;
        this.stavka = stavka;
        this.months = months;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public double getStavka() {
        return stavka;
    }

    public void setStavka(Integer stavka) {
        this.stavka = stavka;
    }

    public Integer getMonths() {
        return months;
    }

    public void setMonths(Integer months) {
        this.months = months;
    }

}

