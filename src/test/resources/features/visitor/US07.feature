@us7
  Feature: US07 Güncel ürünlerin görüntülendiği sayfaya erişim kontol edilir
    Background:
      * Go to "url"
      * User verifies that the New Product Deals link is visible
      * User clicks on the New Product Deals link


    Scenario: TC01 Kullanıcı, ana sayfadaki navigasyon barında Yeni Ürün Fırsatları menü başlığını doğru şekilde görüntüleyebilmelidir.

      * User verifies that navigated to the BEST DEALS page
      * Close the page


    Scenario: TC02 Kullanıcı, En İyi Fırsatlar sayfasında filtreleme işlemleri için gerekli filtreleri sayfanın sol tarafında doğru şekilde görüntüleyebilmelidir.


      * User verifies that the filters is visible on the left side
      * User clicks filters and verifies that the filters fulfill their functions
      * Close the page


    Scenario: TC03 Kullanıcı, En İyi Fırsatlar sayfasında en yeni ürünlerin doğru şekilde listelendiğini görebilmelidir.


      * User verifies that the Product number id visible
      * Close the page


    Scenario: TC04 Kullanıcı, En İyi Fırsatlar sayfasında ürünler için listeleme ve görüntüleme ayarlarını değiştirebilmelidir.


      * Verify that the Listing button, items DDM and sorting DDM is visible
      * User clicks on the Listing button and verifies that button works
      * User clicks on the items DDM and clicks on second item
      * User verifies that items DDM works
      * User clicks on the sorting DDM and clicks on fifth item
      * Close the page


    Scenario:TC05 Kullanıcı, En İyi Fırsatlar sayfasında ürünleri filtreledikten sonra listeleme ve görüntüleme ayarlarının doğru şekilde güncellendiğini görebilmelidir.

      * Click on the Woman's Apperal checkbox
      * User clicks on the Listing button and verifies that button works
      * User clicks on the items DDM and clicks on second item
      * User verifies that items DDM works
      * User clicks on the sorting DDM and clicks on fifth item
      * Close the page


    Scenario:TC06 Kullanıcı, En İyi Fırsatlar sayfasında bir filtreye tıkladığında sayfanın otomatik olarak en üst konuma yönlendirildiğini doğrulayabilmelidir.

      * Click on the Pull And Bear checkbox
      * Verify that the page is redirected to the top
      * Close the page


    Scenario: TC07 Kullanıcı, En İyi Fırsatlar sayfasında yenile butonunu doğru şekilde görüntüleyebilmeli ve butonun işlevsel olarak çalıştığını doğrulayabilmelidir.


      * Verify that the Refresh button is visible
      * Click on the Refresh button
      * Verify that the page is refreshed
      * Close the page