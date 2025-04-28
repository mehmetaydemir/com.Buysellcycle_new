
Feature: Siparişlerin durumunun görüntülenmesi kontrol edilir

  Background:
    * Go to "url"
    * Click Track Your Order link

  Scenario: TC_01 Siparişinizi Takip Edin sayfasına erişilebilmesi
    * Verify that correct page is opened
    * Verify that Order Tracking Number textbox is visible
    * Close the page

  Scenario: TC_02 Siparişinizi Takip Edin sayfasındaki Sipariş Takip Numarasını kullanarak siparişlerin sorgulanması

    * Verify that Secret ID textBox is visible
    * Close the page


  Scenario: TC_03 Geçersiz bir Sipariş Takip Numarası girildiğinde hata mesajının görüntülenmesi
    * Click Order Tracking Number textbox and Write "invalidOrderID"
    * Click Secret ID textBox and Write "invalidSecretID"
    * Click Track Now button
    * Verify that the error message is visible under Order Tracking Number textbox
    * Verify that the error message is visible under Secret ID Only For Guest User textbox
    * Close the page

  Scenario: TC_04 Sipariş Takip Numarası metin kutusunun görünür olması
    * Click Secret ID textbox and Write "SecretID"
    * Click Track Now button
    * Verify that the message is visible
    * Close the page

  @US03
  Scenario: TC_05 Gizli Kimlik (Sadece Misafir Kullanıcı İçin) metin kutusunun görünür olması
    * Click Order Tracking Number textbox and Write "OrderID"
    * Click Track Now button
    * Verify that the message is not Displayed
    * Close the page

