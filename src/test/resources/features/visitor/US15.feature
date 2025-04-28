@us15
Feature: US015 Elektronik menüsünün kategorileri ve ürünleri ana sayfada görüntülenmesi kontrol edilir

  Background:
    * Go to "url"

  Scenario: TC01 Elektronik menüsünün kategorilerin ve ürünlerin görüntülenmesi

    * Verify that the Electronics category window is displayed in the Home page body section.
    * Close the page

  Scenario: TC02 Elektronik menüsünde ürünlerin sepete eklendiğinin doğrulanması

    * Click the Telephone heading in the subcategory and verify that the related products are displayed.
    * Click the TV&Picture&Sound heading in the subcategory and verify that the related products are displayed.
    * Verify that the products on the relevant category page have been added to the basket.
    * Close the page

  Scenario: TC03 Elektronik menüsünde kategorilerdeki ürünleri karşılaştırma yapmak için ürün seçilmesi

    * Click the Telephone heading in the subcategory and verify that the related products are displayed.
    * Click the TV&Picture&Sound heading in the subcategory and verify that the related products are displayed.
    * Verify that you have selected products for comparison on the products in the relevant category page.
    * Close the page

  Scenario: TC04 Elektronik menüsündeki ürünlerin favori listesine eklenmesi

    * Click the Telephone heading in the subcategory and verify that the related products are displayed.
    * Click the TV&Picture&Sound heading in the subcategory and verify that the related products are displayed.
    * Verify that the products on the relevant category page have been added to the likes list.
    * Close the page
