@us5
Feature: US05 Siteye kayıt olunan e-posta adresi ve şifre ile giriş yapılabildiği kontrol edilir
  Background:
    * Go to "url"


  Scenario: TC01 Giriş sayfasına erişilmesi

    * The user clicks on the LOGIN button at the top right corner of the page
    * It is checked whether the login page is opened
    * 2 seconds pause
    * Close the page

  Scenario: TC02 Giriş sayfasındaki ikonun kontrol edilmesi

    * The user clicks on the LOGIN button at the top right corner of the page
    * It is checked if there is a picture displayed on the right side of the page
    * Close the page

  Scenario: TC03 Giriş sayfasında "Fikirlerinizi gerçeğe dönüştürün" alıntısının görüntülenmesi

    * The user clicks on the LOGIN button at the top right corner of the page
    * It is checked if there is a TURN YOUR IDEAS INTO REALITY quote on the right side of the page
    * Close the page

  Scenario: TC04 Giriş sayfasında giriş formunun kontrol edilmesi

    * The user clicks on the LOGIN button at the top right corner of the page
    * It is checked if there is a sign-in form on the left side of the page
    * Close the page

  Scenario: TC05 Giriş sayfasında giriş butonunun kontrol edilmesi

    * The user clicks on the LOGIN button at the top right corner of the page
    * It is checked if there is a SIGN IN button below the sign-in form
    * Close the page

  Scenario: TC06 Giriş sayfasında şifremi unuttum bağlantısının kontrol edilmesi

    * The user clicks on the LOGIN button at the top right corner of the page
    * It is checked if there is a link below the sign-in form for those who forget their password
    * Close the page

  Scenario: TC07 Giriş sayfasında giriş formunun altında giriş bağlantısının kontrol edilmesi

    * The user clicks on the LOGIN button at the top right corner of the page
    * It is checked if there is a link below the sign-in form for those who want to sign up
    * Close the page


  Scenario: TC08 Geçersiz kimlik bilgileri girildiğinde hata mesajı görüntülenmesi

    * The user clicks on the LOGIN button at the top right corner of the page
    * The user types in the invalid mail address to the mail textbox inside the sign-in form
    * The user types in the invalid password to the password textbox inside the sign-in form
    * The user clicks on the SIGN IN button
    * It is checked if the error message is displayed
    * Close the page

  Scenario: TC09 Geçerli e-posta, geçersiz şifre girildiğinde hata mesajının görüntülenmesi

    * Click on the login link, Enter "elifCustomerEmail" and "invalidPassword" and click sign in
    * Close the page

  Scenario: TC10 Geçersiz e-posta, geçerli şifre girildiğinde hata mesajının görüntülenmesi

    * Click on the login link, Enter "invalidCustomerEmail" and "password" and click sign in
    * Close the page

  Scenario: TC11 Geçerli telefon numarası, geçersiz şifre girildiğinde hata mesajının görüntülenmesi

    * Click on the login link, Enter "elifCustomerPhone" and "invalidPassword" and click sign in
    * Close the page

  Scenario: TC12 Geçersiz telefon numarası, geçerli şifre girildiğinde hata mesajının görüntülenmesi

    * Click on the login link, Enter "invalidPhoneNumber" and "password" and click sign in
    * Close the page
















