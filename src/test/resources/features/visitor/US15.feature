@us15
Feature: US15 Elektronik menüsünün kategorileri ve ürünleri ana sayfada görüntülenmesi kontrol edilir

  Background:
    * Go to "url"

  Scenario: TC01 Kullanıcı, Elektronik menüsüne tıkladığında tüm kategorilerin ve bu kategorilere ait ürünlerin doğru şekilde görüntülendiğini doğrulayabilmelidir.


    * Verify that the Electronics category window is displayed in the Home page body section.
    * Close the page

  Scenario: TC02 Kullanıcı, Elektronik menüsündeki ürünleri sepete eklediğinde, ürünlerin sepete başarıyla eklendiğini doğrulayabilmelidir.


    * Click the Telephone heading in the subcategory and verify that the related products are displayed.
    * Click the TV&Picture&Sound heading in the subcategory and verify that the related products are displayed.
    * Verify that the products on the relevant category page have been added to the basket.
    * Close the page

  Scenario: TC03 Kullanıcı, Elektronik menüsündeki kategorilerdeki ürünleri karşılaştırmak amacıyla doğru şekilde seçebilmelidir.


    * Click the Telephone heading in the subcategory and verify that the related products are displayed.
    * Click the TV&Picture&Sound heading in the subcategory and verify that the related products are displayed.
    * Verify that you have selected products for comparison on the products in the relevant category page.
    * Close the page

  Scenario: TC04 Kullanıcı, Elektronik menüsündeki ürünleri favori listesine ekleyebilmeli ve bu ürünleri favorilerinde görüntüleyebilmelidir.


    * Click the Telephone heading in the subcategory and verify that the related products are displayed.
    * Click the TV&Picture&Sound heading in the subcategory and verify that the related products are displayed.
    * Verify that the products on the relevant category page have been added to the likes list.
    * Close the page
