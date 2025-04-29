@us12
Feature: US12 Sitenin günlük kampanyalar ve indirimler içeren sayfasına erişim kontrol edilir

  Background:
    * Go to "url"
    * Verify that the "Daily Deals" is visible
    * Click on the "Daily Deals"


  Scenario: TC01 Kullanıcı, ana sayfa gezinme çubuğunda Günlük Fırsatlar menü öğesini doğru şekilde görüntülemeli ve tıkladığında ilgili sayfaya yönlendirilmelidir.


    * Verify that the "Deal ends in" is visible
    * Close the page


  Scenario:TC02 Kullanıcı, Günlük Fırsatlar sayfasında sayacın doğru şekilde görüntülendiğini doğrulayabilmelidir.


    * User verifies that the Counter is visible
    * Close the page


  Scenario: TC03 Kullanıcı, Günlük Fırsatlar sayfasında özel promosyon ürünlerini doğru şekilde görüntülemeli ve bu ürünlerin promosyon bilgilerini doğrulayabilmelidir.


    * User verifies that First product is visible
    * Close the page


  Scenario: TC04 Kullanıcı, Günlük Fırsatlar sayfasında özel promosyon ürünlerini doğru şekilde görüntülemeli ve bu ürünlerin promosyon bilgilerini doğrulayabilmelidir.

    * Verify that the compare, wishlist, quickwiew, addtocart button is visible
    * Click on the quickwiew button
    * Close the page



