@us10
Feature: US10 İletişim sayfasına erişimin olduğu kontrol edilir
  Background:
    * Go to "url"
    * User clicks on -Contact button- and displays "contactUrl" the Contact page.

    Scenario: TC01 Kullanıcı, İletişim sayfasında şirket adı, adresi, telefon numarası ve e-posta gibi bilgileri doğru şekilde görüntüleyebilmelidir.

      * User verifies that -Call or WhatsApp title- and the information about it is visible.
      * User verifies that -Get in touch title- and the information about it is visible.
      * User verifies that -Social Media title- is visible.
      * User verifies that -Head office title- and the information about it is visible.
      * Close the page

    Scenario: TC02 Kullanıcı, İletişim sayfasında Facebook ikonunu doğru şekilde görüntüleyebilmelidir.

      * User clicks on -Facebook icon-.
      * User verifies that he-she accesses the "facebookUrl".
      * Close the page

    Scenario: TC03  Kullanıcı, İletişim sayfasında Twitter ikonunu doğru şekilde görüntüleyebilmelidir.

      * User clicks on -Twitter icon-.
      * Close the page

    Scenario: TC04 Kullanıcı, İletişim sayfasında LinkedIn ikonunu doğru şekilde görüntüleyebilmelidir.

      * User clicks on -LinkedIn icon-.
      * User verifies that he-she accesses the "linkedInUrl".
      * Close the page

    Scenario: TC05 Kullanıcı, İletişim sayfasında Instagram ikonunu doğru şekilde görüntüleyebilmelidir.

      * User clicks on -Instagram icon-.
      * User verifies that he-she accesses the "instagramUrl".
      * Close the page

    Scenario: TC06 Kullanıcı, site üzerinden yetkili personele doğru şekilde mesaj gönderebilmelidir.

      * User confirms that Get in touch form is visible.
      * User fills out the name section "ihsanName".
      * Close the page
