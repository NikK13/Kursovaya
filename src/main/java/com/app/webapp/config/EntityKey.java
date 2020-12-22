package com.app.webapp.config;

/**
 * Contains Model Keys for the UI containers.
 */
public enum EntityKey {
  BANK("bank"),
  CURRENCY("currency"),
  CLIENT("client"),
  STAVKA("stavka"),
  CREDIT("credit");

  private final String key;

  EntityKey(String key) {
    this.key = key;
  }

  public String getKey() {
    return key;
  }
}
