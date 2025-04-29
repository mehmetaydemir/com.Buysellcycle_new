@us16

Feature: US16 Sayfanın en altındaki fonksiyonlara erişim kontrol edilir

  Background:
    * Go to "url"
    * Goes to Footer section

  Scenario: TC_01 Kullanıcı, ana sayfayı ziyaret ettiğinde footer bölümünü doğru şekilde görüntüleyebilmelidir.


    * Verify that the footer section is displayed at the bottom of the site
    * Close the page

  Scenario: TC_02  Kullanıcı, ana sayfanın alt bilgi bölümünde yer alan bağlantılara tıklayarak hızlıca ana sayfanın üst kısmına erişebilmelidir.


    * The up icon appears at the bottom right and should be active.
    * It should be verified that when the up icon is clicked, it goes to the top of the site.
    * Close the page
