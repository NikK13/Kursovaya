package com.app.webapp.domain;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "CURRENCY")
public class Currency {

  @Id
  private Integer id;
  private String currency;

  public Currency() {
  }

  public Currency(Integer id, String currency) {
    this.id = id;
    this.currency = currency;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getCurrency() {
    return currency;
  }

  public void setCurrency(String currency) {
    this.currency = currency;
  }
}
