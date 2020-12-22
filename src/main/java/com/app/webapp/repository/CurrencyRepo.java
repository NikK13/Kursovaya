package com.app.webapp.repository;

import com.app.webapp.domain.Currency;
import org.springframework.data.repository.CrudRepository;

/**
 * This will be AUTO IMPLEMENTED by Spring into a Bean called Currency Repository
 * CRUD refers Create, Read, Update, Delete
 */
public interface CurrencyRepo extends CrudRepository<Currency, Integer> {

  //List<Currency> findByCountryName(String countryName);
}
