
@US13
Feature: US13 Ürünler hakkında bilgi alınabilmesi için fonksiyonel kaydırıcılar kontrol edilir
  Background:
    * Go to "url"

    @US13TC01
   Scenario: TC01 Kaydırıcıda görüntülerin görüntülenmesi
   * images in the slider are visible on the homepage
   * Close the page

  @US13TC02
    Scenario: TC02 Kaydırıcıda resimler arasında geçiş yapılabilmesi
    * 5 seconds pause
    * scrolling between slider images and Verifies that the displayed image changes in scrolls
    * Close the page


   @US13TC03
   Scenario: TC03 Görüntülerin bir döngüde otomatik sırayla bir kaydırıcıda görüntülenmesi
   * Slider images are expected to automatically switch after a certain period of time Verifies that images are automatically displayed in a loop
   * Close the page

  @US13TC04
   Scenario: TC04 Kaydırıcıdaki resimlere tıklanması
   * Click on a slider image and Verifies that the relevant page has been opened
   * Close the page
