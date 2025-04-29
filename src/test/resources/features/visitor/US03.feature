@us3
Feature: US03 Siparişlerin durumunun görüntülenmesi kontrol edilir

  Background:
    * Go to "url"
    * Click Track Your Order link

  Scenario: TC_01 Kullanıcı, Siparişinizi Takip Edin bağlantısına tıklayarak ilgili sayfaya erişebilmelidir.

    * Verify that correct page is opened
    * Verify that Order Tracking Number textbox is visible
    * Close the page

  Scenario: TC_02 Kullanıcı, Siparişinizi Takip Edin sayfasında Sipariş Takip Numarasını kullanarak sipariş durumunu sorgulayabilmelidir.


    * Verify that Secret ID textBox is visible
    * Close the page


  Scenario: TC_03 Kullanıcı, geçersiz bir Sipariş Takip Numarası girdiğinde sistem uygun bir hata mesajı göstermelidir.

    * Click Order Tracking Number textbox and Write "invalidOrderID"
    * Click Secret ID textBox and Write "invalidSecretID"
    * Click Track Now button
    * Verify that the error message is visible under Order Tracking Number textbox
    * Verify that the error message is visible under Secret ID Only For Guest User textbox
    * Close the page

  Scenario: TC_04 Kullanıcı, Siparişinizi Takip Edin sayfasında Sipariş Takip Numarası metin kutusunu görebilmelidir.

    * Click Secret ID textbox and Write "SecretID"
    * Click Track Now button
    * Verify that the message is visible
    * Close the page


  Scenario: TC_05 Misafir kullanıcı, Siparişinizi Takip Edin sayfasında Gizli Kimlik metin kutusunu görebilmelidir.

    * Click Order Tracking Number textbox and Write "OrderID"
    * Click Track Now button
    * Verify that the message is not Displayed
    * Close the page

