@us10
Feature: US10 İletişim sayfasına erişimin olduğu kontrol edilir
  Background:
    * Go to "url"
    * User clicks on -Contact button- and displays "contactUrl" the Contact page.

    Scenario: TC01 İletişim sayfasında şirket bilgilerinin görüntülenmesi
      * User verifies that -Call or WhatsApp title- and the information about it is visible.
      * User verifies that -Get in touch title- and the information about it is visible.
      * User verifies that -Social Media title- is visible.
      * User verifies that -Head office title- and the information about it is visible.
      * Close the page

    Scenario: TC02 İletişim sayfasında Facebook ikonunun görüntülenmesi
      * User clicks on -Facebook icon-.
      * User verifies that he-she accesses the "facebookUrl".
      * Close the page

    Scenario: TC03  İletişim sayfasında Twitter ikonunun görüntülenmesi
      * User clicks on -Twitter icon-.
      * Close the page

    Scenario: TC04 İletişim sayfasında Linkedin ikonunun görüntülenmesi
      * User clicks on -LinkedIn icon-.
      * User verifies that he-she accesses the "linkedInUrl".
      * Close the page

    Scenario: TC05 İletişim sayfasında İnstagram ikonunun görüntülenmesi
      * User clicks on -Instagram icon-.
      * User verifies that he-she accesses the "instagramUrl".
      * Close the page

    Scenario: TC06 Sitede yetkili personele mesaj gönderilmesi
      * User confirms that Get in touch form is visible.
      * User fills out the name section "ihsanName".
      * Close the page
