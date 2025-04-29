@us11
Feature:US11 Ana sayfa gezinme çubuğundaki "Yeni Kullanıcı Alanı" menü öğesinin görünürlüğü ve işlevselliği kontrol edilir

  Background:
    * Go to "url"
    * Verify  for the presence of the New User Zone menu item
    * Click on the New User Zone menu item


  Scenario: TC_01 Kullanıcı, "Yeni Kullanıcı Alanı" bağlantısına tıkladığında doğru sayfaya yönlendirilmelidir.


    * verify that New User Zone link should redirect the user to the New-user-zone page
    * Close the page

  Scenario: TC_02 Kullanıcı, "Sizin İçin" bölümüne tıkladığında doğru içeriğe yönlendirilmelidir.


    * Verify that For You section is active
    * Close the page

  Scenario: TC_03 Kullanıcı, "Özel Fiyat" bölümüne tıkladığında ilgili özel fiyat bilgisini doğru şekilde görmelidir.


    * Click on the Exclusive Price section
    * verify that products display with special discount on Exclusive Price
    * Close the page

  Scenario: TC_04 Kullanıcı, "Kupon" bölümüne kupon kodu girerek geçerli bir kupon kullanabilmeli ve indirim uygulandığını görmelidir.


    * Click on the Coupon section and verify that Coupon is visible
    * Close the page

  Scenario: TC_05 Kullanıcı, "Sizin İçin" bölümünde ürünleri karşılaştırma için seçmeli ve ardından seçilen ürünleri sepete ekleyebilmelidir.


    * Click on the chart icon of the first product
    * verify that the message Item added to your cart on the modal
    * Close the modal window that opened
    * Close the page

