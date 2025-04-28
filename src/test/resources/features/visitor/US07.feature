@us7
  Feature: US07 Güncel ürünlerin görüntülendiği sayfaya erişim kontol edilir
    Background:
      * Go to "url"
      * User verifies that the New Product Deals link is visible
      * User clicks on the New Product Deals link


    Scenario: TC01 Yeni Ürün fırsatları menü başlığının navBar'da görünür olduğunun doğrulanması
      * User verifies that navigated to the BEST DEALS page
      * Close the page


    Scenario: TC02 Filtreleme işlemleri için filtreler, En İyi Fırsatlar sayfasının sol tarafında görünür olduğunun doğrulanması

      * User verifies that the filters is visible on the left side
      * User clicks filters and verifies that the filters fulfill their functions
      * Close the page


    Scenario: TC03 En İyi Fırsatlar sayfasında en son ürünlerin listelendiğinin doğrulanması

      * User verifies that the Product number id visible
      * Close the page


    Scenario: TC04 En İyi Fırsatlar sayfasında görünen ürünler için listeleme ve görüntüleme ayarlarının değiştirilebilir olduğunun doğrulanması

      * Verify that the Listing button, items DDM and sorting DDM is visible
      * User clicks on the Listing button and verifies that button works
      * User clicks on the items DDM and clicks on second item
      * User verifies that items DDM works
      * User clicks on the sorting DDM and clicks on fifth item
      * Close the page


    Scenario:TC05 En İyi Fırsatlar sayfasında görünen ürünleri filtreledikten sonra listeleme ve görüntüleme ayarlarının değiştiğinin doğrulanması
      * Click on the Woman's Apperal checkbox
      * User clicks on the Listing button and verifies that button works
      * User clicks on the items DDM and clicks on second item
      * User verifies that items DDM works
      * User clicks on the sorting DDM and clicks on fifth item
      * Close the page


    Scenario:TC06 En İyi Fırsatlar sayfasındaki filtreye tıkladıktan sonra sayfanın en üstüne yönlendirildiğinin doğrulanması
      * Click on the Pull And Bear checkbox
      * Verify that the page is redirected to the top
      * Close the page


    Scenario: TC07 En İyi Fırsatlar sayfasındaki yenile butonunun görünür ve işlevsel olması

      * Verify that the Refresh button is visible
      * Click on the Refresh button
      * Verify that the page is refreshed
      * Close the page