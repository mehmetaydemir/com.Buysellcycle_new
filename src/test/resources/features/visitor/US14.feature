@us14
Feature: US14 Ana sayfa gövde bölümündeki fonksiyonlar kontrol edilir

  Scenario: TC_01 Kullanıcı, ana sayfanın gövde bölümünde En İyi Fırsatlar menüsüne tıkladığında, ilgili ürünlerin doğru şekilde listelendiğini görmelidir.

    * Go to "url"
    * Verify that Best Deals text is visible
    * Click View All button
    * Verify that all the products are visible
    * Close the page

  Scenario: TC_02 Kullanıcı, En İyi Fırsatlar menüsündeki ürünler üzerinde işlem yapabilmeli, ürünleri sepete ekleyebilmeli veya ürün detaylarını görüntüleyebilmelidir.

    * Go to "url"
    * Verify that Compare and Quick View links are active
    * Verify that Wishlist link is active
    * Verify that Add To Cart link is active
    * Close the page

  Scenario: TC_03 Kullanıcı, En İyi Fırsatlar menüsündeki ürünlere tıklayarak detaylarını görüntüleyebilmeli, sepete ekleyebilmeli veya favorilerine ekleyebilmelidir.

    * Go to "url"
    * Verify that Compare and Quick View links are active
    * Verify that Wishlist link is active
    * Verify that Add To Cart link is active
    * Close the page


  Scenario: TC_04 Kullanıcı, Özellik Kategorileri menüsüne tıkladığında tüm ürünlerin doğru şekilde listelendiğini ve görüntülendiğini doğrulayabilmelidir.

    * Go to "url"
    * Verify that Feature Categories text is visible
    * Verify that product box are visible under the Feature Categories text
    * Click View All button
    * Verify that all the products are visible
    * Close the page


  Scenario: TC_05 Kullanıcı, Özellik Kategorileri menüsündeki ürünler üzerinde işlem yapabilmeli, ürünleri sepete ekleyebilmeli, favorilerine ekleyebilmeli veya detaylarını görüntüleyebilmelidir.

    * Go to "url"
    * Verify that Feature Categories text is visible
    * Click Shop Now link
    * Verify that Compare and Quick View links are active
    * Verify that Wishlist link is active
    * Verify that Add To Cart link is active
    * Close the page

