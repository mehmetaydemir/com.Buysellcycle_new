@us13
Feature: US13 Ürünler hakkında bilgi alınabilmesi için fonksiyonel kaydırıcılar kontrol edilir
  Background:
    * Go to "url"


   Scenario: TC01 Kullanıcı, kaydırıcıda farklı görüntülerin doğru şekilde sırasıyla ve düzgün şekilde görüntülendiğini doğrulayabilmelidir.

     * images in the slider are visible on the homepage
   * Close the page


    Scenario: TC02 Kullanıcı, kaydırıcıda bir resme tıklayarak veya kaydırıcıyı manuel olarak kaydırarak resimler arasında geçiş yapabilmelidir.

      * 5 seconds pause
    * scrolling between slider images and Verifies that the displayed image changes in scrolls
    * Close the page


