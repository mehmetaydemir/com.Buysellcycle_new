@us2
Feature: US02 Kullanicinin ana sayfanın üst çubugundaki bağlantılara erisimi kontrol edilir

  Background:
    * Go to "url"


  Scenario: TC01 Siparişimi takip etmek için "Siparişinizi Takip Edin" bağlantısını görmek ve tıklamak istiyorum

    * Displays und click the headings (Track Your Order) on the top right side
    * Close the page


  Scenario: TC02 Kullanıcı olarak,  Ürünleri karşılaştırmak için Karşılaştırma bağlantısını görmek ve tıklamak istiyorum

    * Displays und click the headings ( Compare) on the top right side
    * Close the page


  Scenario: TC03 Kullanıcı olarak,  Favoriler bağlantısını görmek ve tıklamak istiyorum

    * Displays und click the headings ( Wishlist) on the top right side. Click the BuyCell logo
    * Close the page


  Scenario: TC04 Kullanıcı olarak,  Sepet bağlantısını görmek ve tıklamak istiyorum

    * Displays und click the headings (Cart) on the top right side
    * Close the page


  Scenario: TC05 Kullanıcı olarak,  Yeni kullanıcı bağlantısını görmek ve tıklamak istiyorum

    * Displays und click the headings (New User Zone ) on the top right side
    * Close the page


  Scenario: TC06 Kullanıcı olarak,  Günlük Fırsatlar bağlantısını görmek ve tıklamak istiyorum

    * Displays und click the headings ( Daily Deals) on the top right side
    * Close the page

  Scenario: TC07 Kullanıcı olarak,  Site logosunun bağlantısını görmek ve tıklamak istiyorum

    * The site logo is displayed on the top left of the page
    * Click on the site logo and refresh the page
    * Close the page

  Scenario: TC08 Kullanıcı olarak,  Arama kutusunun görmek ve Arama yapmak istiyorum

    * The site logo is displayed und enabled on the top left of the page
    * Close the page




