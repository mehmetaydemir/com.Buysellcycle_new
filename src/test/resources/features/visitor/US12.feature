Feature: US12 Sitenin günlük kampanyalar ve indirimler içeren sayfasına erişim kontrol edilir

  Background:
    * Go to "url"
    * Verify that the "Daily Deals" is visible
    * Click on the "Daily Deals"

  @12/1
  Scenario: TC01 Ana sayfa gezinme çubuğundaki Günlük Fırsatlar menü öğesinin görünür ve işlevsel olma testi

    * Verify that the "Deal ends in" is visible
    * Close the page

  @12/2
  Scenario:TC02 Günlük Fırsatlar sayfasında sayacın görünür olması

    * User verifies that the Counter is visible
    * Close the page

  @12/3
  Scenario: TC03 Günlük Fırsatlar sayfasında özel promosyon ürünlerinin test edilmesi

    * User verifies that First product is visible
    * Close the page

  @12/4
  Scenario: TC04 Günlük Fırsatlar sayfasında, ürünler üzerinde işlemlerin test edilmesi
    * Verify that the compare, wishlist, quickwiew, addtocart button is visible
    * Click on the quickwiew button
    * Close the page



