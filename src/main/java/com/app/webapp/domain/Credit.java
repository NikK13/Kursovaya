package com.app.webapp.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "CREDIT")
public class Credit {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private Integer client_id;
    private Integer stavka_id;
    private Integer summa;

    public Credit() {
    }

    public Credit(Integer summa) {
        this.summa = summa;
    }

    public Credit(Integer id, Integer stavka_id, Integer summa) {
        this.id = id;
        this.stavka_id = stavka_id;
        this.summa = summa;
    }

    public Credit(Integer id, Integer stavka_id, Integer client_id, Integer summa) {
        this.id = id;
        this.stavka_id = stavka_id;
        this.client_id = client_id;
        this.summa = summa;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getClient_id() {
        return client_id;
    }

    public void setClient_id(Integer client_id) {
        this.client_id = client_id;
    }

    public Integer getStavka_id() {
        return stavka_id;
    }

    public void setStavka_id(Integer stavka_id) {
        this.stavka_id = stavka_id;
    }

    public Integer getSumma() {
        return summa;
    }

    public void setSumma(Integer sum) {
        this.summa = sum;
    }
}


