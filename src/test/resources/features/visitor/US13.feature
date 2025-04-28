@us13
Feature: US13 Ürünler hakkında bilgi alınabilmesi için fonksiyonel kaydırıcılar kontrol edilir
  Background:
    * Go to "url"


   Scenario: TC01 Kaydırıcıda görüntülerin görüntülenmesi
   * images in the slider are visible on the homepage
   * Close the page


    Scenario: TC02 Kaydırıcıda resimler arasında geçiş yapılabilmesi
    * 5 seconds pause
    * scrolling between slider images and Verifies that the displayed image changes in scrolls
    * Close the page


