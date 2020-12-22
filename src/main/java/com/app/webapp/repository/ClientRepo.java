package com.app.webapp.repository;

import com.app.webapp.domain.Client;
import org.springframework.data.repository.CrudRepository;

/**
 * This will be AUTO IMPLEMENTED by Spring into a Bean called Currency Repository
 * CRUD refers Create, Read, Update, Delete
 */
public interface ClientRepo extends CrudRepository<Client, Integer> {
}
