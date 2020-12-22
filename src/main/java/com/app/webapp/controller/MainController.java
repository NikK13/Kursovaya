package com.app.webapp.controller;

import com.app.webapp.domain.*;
import com.app.webapp.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import static com.app.webapp.config.EntityKey.*;

@Controller
public class MainController {

  @Autowired
  private BankRepo bankRepo;
  @Autowired
  private ClientRepo clientRepo;
  @Autowired
  private CurrencyRepo currencyRepo;
  @Autowired
  private CreditRepo creditRepo;
  @Autowired
  private StavkaRepo stavkaRepo;

  @GetMapping("/")
  public String main(@AuthenticationPrincipal User user,
                     @RequestParam(required = false, defaultValue = "") String countryName,
                     Model model) {
    refreshTables(model);
    model.addAttribute("user", user);

    return "main";
  }

  /**
   * Puts all the tables to the model containers.
   *
   * @param model
   */
  private void refreshTables(Model model) {
    model.addAttribute(BANK.getKey(), bankRepo.findAll());
    model.addAttribute(CURRENCY.getKey(), currencyRepo.findAll());
    model.addAttribute(CLIENT.getKey(), clientRepo.findAll());
    model.addAttribute(STAVKA.getKey(), stavkaRepo.findAll());
    model.addAttribute(CREDIT.getKey(), creditRepo.findAll());
  }

}
