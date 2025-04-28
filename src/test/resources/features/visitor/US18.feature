@us18
Feature: İstek Listem Sayfasi Kontrol Edilir

  Background:
    * Go to "url"


  Scenario: TC01 Dashboard kenar cubugunda benim istek listem menu baslıgı gorunur olmasi
    * All Categories in the nav bar on the home page that the drop-down menu is visible verify.
    * Go to the All Categories dropdown menu click.
    * All items in the drop-down menu category titles of verify that it is visible.
    * Click on the Electronics main category and select the subcategories it's confirmed to appear.
    * Subcategories within the Electronics category one title clicked on the right place  that it is directed.
    * Click on the Baby main category and select the subcategories it's confirmed to appear.
    * Subcategories within the Baby category two title clicked on the right place  that it is directed.
    * Close the page


  Scenario: TC02 Begenilen urunler benim istek listem sayfasinda goruntulenmesi
    * Displays und click the headings ( Compare) on the top right side
    * Close the page



  Scenario: TC03 Benim istek listem sayfasindadaki favori urunler filtrelenip aranabilmesi
    * Verify that the Blog menu title is visible in the home page navBar
    * Verify that the Blog link is active on the home page
    * Click on the blog menu
    * Verify that it redirects to the blog page
    * Close the page


  Scenario: TC04 Benim istek listem sayfasindaki urunler uzerinde islemler yapilabilmesi
    * Click All Categories dropdown menu
    * Click the Electronics link
    * Displays Electronics subcategories
    * Close the page







