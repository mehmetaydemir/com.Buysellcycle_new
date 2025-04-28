@US14
Feature: US14 Ana sayfa gövde bölümündeki fonksiyonlar kontrol edilir

  Scenario: TC_01 Ürünlerin ana sayfanın gövde bölümünde, En İyi Fırsatlar menüsü altında görüntülenmesi
    * Go to "url"
    * Verify that Best Deals text is visible
    * Click View All button
    * Verify that all the products are visible
    * Close the page

  Scenario: TC_02 En İyi Fırsatlar menüsündeki ürünler üzerinde işlem yapılabilmesi
    * Go to "url"
    * Verify that Compare and Quick View links are active
    * Verify that Wishlist link is active
    * Verify that Add To Cart link is active
    * Close the page

  Scenario: TC_02 En İyi Fırsatlar menüsündeki ürünler üzerinde işlem yapılabilmesi
    * Go to "url"
    * Verify that Compare and Quick View links are active
    * Verify that Wishlist link is active
    * Verify that Add To Cart link is active
    * Close the page


  Scenario: TC_03 Özellik Kategorileri menüsüne ait tüm ürünlerin görünür olma testi
    * Go to "url"
    * Verify that Feature Categories text is visible
    * Verify that product box are visible under the Feature Categories text
    * Click View All button
    * Verify that all the products are visible
    * Close the page


  Scenario: TC_04 Özellik Kategorileri menüsünde ürünler üzerinde işlem yapılabildiğinin doğrulanması
    * Go to "url"
    * Verify that Feature Categories text is visible
    * Click Shop Now link
    * Verify that Compare and Quick View links are active
    * Verify that Wishlist link is active
    * Verify that Add To Cart link is active
    * Close the page

