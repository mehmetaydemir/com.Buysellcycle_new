@us16

Feature: US16 Sayfanın en altındaki fonksiyonlara erişim kontrol edilir

  Background:
    * Go to "url"
    * Goes to Footer section

  Scenario: TC_01 Ana sayfada footer bölümünün görüntülenmesi

    * Verify that the footer section is displayed at the bottom of the site
    * Close the page

  Scenario: TC_02 Faydalı bağlantıların footer bölümünde görüntülenmesi

    * "About Us" text is displayed and it is confirmed that it is active
    * "The blog" text is displayed and it is confirmed that it is active
    * "Dashboard" text is displayed and it is confirmed that it is active
    * "My Profile" text is displayed and it is confirmed that it is active
    * "My Order" text is displayed and it is confirmed that it is active
    * "Help&Contact" text is displayed and it is confirmed that it is active
    * "Track Order" text is displayed and it is confirmed that it is active
    * "Return&Exchange" text is displayed and it is confirmed that it is active
    * Close the page

  Scenario: TC_03  Yararlı Bağlantılar doğrulama testi

    * Click on "About Us" and the "About" page opens
    * Click on "The blog" and the "blog" page opens
    * Click on "Dashboard" and the "Dashboard" page opens
    * Click on "My Profile" and the "My Profile" page opens
    * Click on "My Order" and the "My Order" page opens
    * Click on "Help&Contact" and the "Help&Contact" page opens
    * Click on "Track Order" and the "Track Order" page opens
    * Click on "Return&Exchange" and the "Return&Exchange" page opens
    * Close the page

  Scenario: TC_04  Haber bültenlerine alt bilgi kısmında yer alan abone bölümünden abone olma testi

    * Verify that the "Enter email address" text box is visible and active under the "GET A QUICK QUOTE" text
    * Verify that the "SUBSCRIBE" button is visible and active under the "Enter email address" text box.
    * Close the page


  Scenario: TC_05 Uygulama marketi bağlantılarının görünür ve aktif olması testi
    * "Google Play" text is displayed and it is confirmed that it is active
    * "Apple Store" text is displayed and it is confirmed that it is active
    * Close the page

  Scenario: TC_06  Uygulama market bağlantılarının doğrulamanması

    * Click on "Google Play" and the "Google Play" page opens
    * Click on "Apple Store" and the "Apple Store" page opens
    * Close the page


  Scenario: TC_07 Sosyal medya simgelerinin görünür ve etkin olması

    * Verify that the "YouTube" icon is visible and active
    * Verify that the "LinkedIn" icon is visible and active
    * Verify that the "Instagram" icon is visible and active
    * Verify that the "Facebook" icon is visible and active
    * Close the page

  Scenario: TC_08  Sosyal medya simgeleri doğrulama testi

    * Click on the "YouTube" icon and verify that the "Youtube" page is opened.
    * Click on the "LinkedIn" icon and verify that the "LinkedIn" page is opened.
    * Click on the "Instagram" icon and verify that the "Instagram" page is opened.
    * Click on the "Facebook" icon and verify that the "Facebook" page is opened.
    * Close the page

  Scenario: TC_09  Altbilgi bölümünde "Telif Hakkı © 2024. Tüm hakları saklıdır." ifadesinin görüntülenmesi

    * At the bottom left, "Copyright © 2024. All rights reserved." The text must be visible.
    * Close the page

  Scenario: TC_10  Ana sayfanın üst kısmına alt bilgi bölümünden hızlı erişimin sağlanması

    * The up icon appears at the bottom right and should be active.
    * It should be verified that when the up icon is clicked, it goes to the top of the site.
    * Close the page
