@US01TC01
Feature: Kullanicinin anasayfaya erisimi kontrol edilir

  Scenario: TC_01 Kullanicinin anasayfaya erisiminin saglanmasi

    Given Go to "url"
    Then  Verify that the title is "BuySellCycle | Multivendor Marketplace"
    And  Close the page
