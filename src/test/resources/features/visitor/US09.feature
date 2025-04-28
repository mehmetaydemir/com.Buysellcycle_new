@us9
Feature: US09 Blog sayfasına erişimin olduğu kontrol edilir

  Background:
    * Go to "url"

  Scenario:TC_01 Blog sayfasında gezinme çubuğunun görünür ve etkin olduğu test edilir

    * Verify that the Blog menu title is visible in the home page navBar
    * Verify that the Blog link is active on the home page
    * Click on the blog menu
    * Verify that it redirects to the blog page
    * Close the page

  Scenario: TC_02 Blog sayfasındaki daha fazlasını oku bağlantısının görünür ve aktif olduğunun doğrulanması
    * Click on the blog menu
    * Verify that the read more link in blog posts is visible
    * Close the page

  Scenario: TC_03 Blog sayfasındaki daha fazlasını oku bağlantısı ile ilgili sayfaya erişilmesi
    * Click on the blog menu
    * Click on the Read more link
    * Verify that you are redirected to the relevant page
    * Close the page

  Scenario: TC_04 Blog sayfasındaki arama sonucunun anahtar kelimeyle eşleştirilmesi
    * Click on the blog menu
    * Click on the Read more link
    * Search for a keyword in the Search Post box
    * Verify that the search results match the relevant keyword
    * Close the page

  Scenario: TC_05 Blog sayfasındaki başlıkların görünür ve aktif olduğunun doğrulanması
    * Click on the blog menu
    * Click on the Read more link
    * Search for a keyword in the Search Post box
    * Verify that titles are visible in the Category section
    * Close the page

  Scenario: TC_06 Blog sayfasındaki başlıklar linki ile başlıklar sayfasına erişilmesi
    * Click on the blog menu
    * Click on the Read more link
    * Search for a keyword in the Search Post box
    * Select a category from the Category section
    * Verify that relevant blogs are listed
    * Close the page

  Scenario: TC_07 Blog sayfasındaki popüler gönderi bölümünün görünür olduğunun doğrulanması
    * Click on the blog menu
    * Click on the Read more link
    * Search for a keyword in the Search Post box
    * Select a category from the Category section
    * Verify that the popular post section is visible and blogs are displayed
    * Close the page

  Scenario: TC_08 Blog sayfasındaki anahtar kelime bölümünün görünür olduğunun doğrulanması
    * Click on the blog menu
    * Click on the Read more link
    * Search for a keyword in the Search Post box
    * Select a category from the Category section
    * Verify that the Keyword section is visible
    * Close the page


