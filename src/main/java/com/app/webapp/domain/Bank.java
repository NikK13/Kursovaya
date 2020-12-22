package com.app.webapp.domain;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "BANK")
public class Bank {
    @Id
    private String name;
    private Integer id;
    private Integer currency_id;

    public Bank() {
    }

    public Bank(Integer id, String name, Integer currency_id) {
        this.id = id;
        this.name = name;
        this.currency_id = currency_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCurrency_id() {
        return currency_id;
    }

    public void setCurrency_id(Integer currency_id) {
        this.currency_id = currency_id;
    }
}

