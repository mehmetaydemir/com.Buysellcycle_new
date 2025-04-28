@US11
Feature:US11 Ana sayfa gezinme çubuğundaki "Yeni Kullanıcı Alanı" menü öğesinin görünürlüğü ve işlevselliği kontrol edilir

  Background:
    * Go to "url"
    * Verify  for the presence of the New User Zone menu item
    * Click on the New User Zone menu item


  Scenario: TC_01 "Yeni Kullanıcı Alanı" bağlantısının test edilmesi

    * verify that New User Zone link should redirect the user to the New-user-zone page
    * Close the page

  Scenario: TC_02 "Sizin İçin" bölümünün işlevselliğinin test edilmesi

    * Verify that For You section is active
    * Close the page

  Scenario: TC_03 "Özel Fiyat" bölümünün işlevselliğinin test edilmesi

    * Click on the Exclusive Price section
    * verify that products display with special discount on Exclusive Price
    * Close the page

  Scenario: TC_04 "Kupon" bölümünün işlevselliğinin test edilmesi

    * Click on the Coupon section and verify that Coupon is visible
    * Close the page

  Scenario: TC_05 Sepete ekleme, "Sizin İçin" bölümünde karşılaştırma için ürün seçme özelliklerinin test edilmesi

    * Click on the chart icon of the first product
    * verify that the message Item added to your cart on the modal
    * Close the modal window that opened
    * Close the page

