@us9
Feature: US09 Blog sayfasına erişimin olduğu kontrol edilir

  Background:
    * Go to "url"

  Scenario:TC_01 Kullanıcı, Blog sayfasında gezinme çubuğunu doğru şekilde görüntüleyebilmeli ve çubuğun işlevsel olarak çalıştığını doğrulayabilmelidir.


    * Verify that the Blog menu title is visible in the home page navBar
    * Verify that the Blog link is active on the home page
    * Click on the blog menu
    * Verify that it redirects to the blog page
    * Close the page

  Scenario: TC_02 Kullanıcı, Blog sayfasında "Daha Fazlasını Oku" bağlantısını doğru şekilde görüntüleyebilmeli ve bağlantının aktif olarak çalıştığını doğrulayabilmelidir.

    * Click on the blog menu
    * Verify that the read more link in blog posts is visible
    * Close the page

  Scenario: TC_03 Kullanıcı, Blog sayfasında "Daha Fazlasını Oku" bağlantısına tıklayarak ilgili blog içeriği sayfasına yönlendirilmelidir.

    * Click on the blog menu
    * Click on the Read more link
    * Verify that you are redirected to the relevant page
    * Close the page

  Scenario: TC_04 Kullanıcı, Blog sayfasında arama yaptığında sonuçların aranan anahtar kelimeyle doğru şekilde eşleştiğini görebilmelidir.

    * Click on the blog menu
    * Click on the Read more link
    * Search for a keyword in the Search Post box
    * Verify that the search results match the relevant keyword
    * Close the page

  Scenario: TC_05 Kullanıcı, Blog sayfasında başlıkların doğru şekilde görüntülendiğini ve başlıklara tıklandığında ilgili içeriklere erişilebildiğini doğrulayabilmelidir.

    * Click on the blog menu
    * Click on the Read more link
    * Search for a keyword in the Search Post box
    * Verify that titles are visible in the Category section
    * Close the page

  Scenario: TC_06 Kullanıcı, Blog sayfasındaki başlıklar linkine tıklayarak başlıklar sayfasına doğru şekilde yönlendirilmelidir.

    * Click on the blog menu
    * Click on the Read more link
    * Search for a keyword in the Search Post box
    * Select a category from the Category section
    * Verify that relevant blogs are listed
    * Close the page

  Scenario: TC_07 Kullanıcı, Blog sayfasında Popüler Gönderi bölümünü doğru şekilde görüntüleyebilmelidir.

    * Click on the blog menu
    * Click on the Read more link
    * Search for a keyword in the Search Post box
    * Select a category from the Category section
    * Verify that the popular post section is visible and blogs are displayed
    * Close the page

  Scenario: TC_08 Kullanıcı, Blog sayfasında Anahtar Kelime bölümünü doğru şekilde görüntüleyebilmelidir.

    * Click on the blog menu
    * Click on the Read more link
    * Search for a keyword in the Search Post box
    * Select a category from the Category section
    * Verify that the Keyword section is visible
    * Close the page


