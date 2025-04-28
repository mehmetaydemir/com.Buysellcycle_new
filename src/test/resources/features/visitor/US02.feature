@US02
Feature: Kullanicinin ana sayfanın üst çubugundaki bağlantılara erisimi kontrol edilir

  Background:
    * Go to "url"


  Scenario: TC01 Siparişinizi Taki Edin bağlantısının görüntülenmesi ve tıklanması
    * Displays und click the headings (Track Your Order) on the top right side
    * Close the page


  Scenario: TC02 Karşılaştırma baglantısının görüntülenmesi ve tıklanması
    * Displays und click the headings ( Compare) on the top right side
    * Close the page


  Scenario: TC03 Favoriler bağlantısının görüntülenmesi ve tıklanması
    * Displays und click the headings ( Wishlist) on the top right side. Click the BuyCell logo
    * Close the page


  Scenario: TC04 Sepet baglantısının görüntülenmesi ve tıklanması
    * Displays und click the headings (Cart) on the top right side
    * Close the page


  Scenario: TC05 Yeni kullanıcı baglantısının görüntülenmesi ve tıklanması
    * Displays und click the headings (New User Zone ) on the top right side
    * Close the page


  Scenario: TC06 Günlük Fırsatlar baglantısının görüntülenmesi ve tıklanması
    * Displays und click the headings ( Daily Deals) on the top right side
    * Close the page

  Scenario: TC07 Site logosunun görüntülenmesi ve tıklanabilir olması
    * The site logo is displayed on the top left of the page
    * Click on the site logo and refresh the page
    * Close the page

  Scenario: TC08 Arama kutusunun görüntülenmesi
    * The site logo is displayed und enabled on the top left of the page
    * Close the page




