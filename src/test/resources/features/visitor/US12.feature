@us12
Feature: US12 Sitenin günlük kampanyalar ve indirimler içeren sayfasına erişim kontrol edilir

  Background:
    * Go to "url"
    * Verify that the "Daily Deals" is visible
    * Click on the "Daily Deals"


  Scenario: TC01 Ana sayfa gezinme çubuğundaki Günlük Fırsatlar menü öğesinin görünür ve işlevsel olma testi

    * Verify that the "Deal ends in" is visible
    * Close the page


  Scenario:TC02 Günlük Fırsatlar sayfasında sayacın görünür olması

    * User verifies that the Counter is visible
    * Close the page


  Scenario: TC03 Günlük Fırsatlar sayfasında özel promosyon ürünlerinin test edilmesi

    * User verifies that First product is visible
    * Close the page


  Scenario: TC04 Günlük Fırsatlar sayfasında, ürünler üzerinde işlemlerin test edilmesi
    * Verify that the compare, wishlist, quickwiew, addtocart button is visible
    * Click on the quickwiew button
    * Close the page



