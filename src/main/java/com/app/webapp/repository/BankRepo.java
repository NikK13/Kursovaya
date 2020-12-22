package com.app.webapp.repository;

import com.app.webapp.domain.Bank;
import org.springframework.data.repository.CrudRepository;

public interface BankRepo extends CrudRepository<Bank, Integer> {
}
