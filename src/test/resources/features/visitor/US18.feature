@us18
Feature: US18 İstek Listem Sayfasi Kontrol Edilir

  Background:
    * Go to "url"


  Scenario: TC01 Kullanıcı, Dashboard kenar çubuğunda 'Benim İstek Listem' menü başlığını doğru şekilde görüntüleyebilmelidir.

    * All Categories in the nav bar on the home page that the drop-down menu is visible verify.
    * Go to the All Categories dropdown menu click.
    * All items in the drop-down menu category titles of verify that it is visible.
    * Click on the Electronics main category and select the subcategories it's confirmed to appear.
    * Subcategories within the Electronics category one title clicked on the right place  that it is directed.
    * Click on the Baby main category and select the subcategories it's confirmed to appear.
    * Subcategories within the Baby category two title clicked on the right place  that it is directed.
    * Close the page


  Scenario: TC02 Kullanıcı, 'Benim İstek Listem' sayfasına gittiğinde, beğenilen ürünlerin doğru şekilde listelendiğini görebilmelidir.

    * Displays und click the headings ( Compare) on the top right side
    * Close the page



  Scenario: TC03 Kullanıcı, 'Benim İstek Listem' sayfasında favori ürünlerini belirli kriterlere göre filtreleyerek arama yapabilmelidir.

    * Verify that the Blog menu title is visible in the home page navBar
    * Verify that the Blog link is active on the home page
    * Click on the blog menu
    * Verify that it redirects to the blog page
    * Close the page


  Scenario: TC04 Kullanıcı, 'Benim İstek Listem' sayfasındaki ürünler üzerinde işlem yaparak, ürünleri sepete ekleyebilir, favorilerinden çıkarabilir veya detaylarını görüntüleyebilir.

    * Click All Categories dropdown menu
    * Click the Electronics link
    * Displays Electronics subcategories
    * Close the page







