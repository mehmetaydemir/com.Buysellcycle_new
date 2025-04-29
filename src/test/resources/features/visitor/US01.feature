@us1
Feature: US01 Kullanicinin anasayfaya erisimi kontrol edilir

  Scenario: TC_01 Bir kullanıcı olarak,  Ana sayfaya erişmek istiyorum  Böylece site içeriğini görebilirim

    Given Go to "url"
    Then  Verify that the title is "BuySellCycle | Multivendor Marketplace"
    And  Close the page
