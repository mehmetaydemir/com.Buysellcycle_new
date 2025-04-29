@us5
Feature: US05 Siteye kayıt olunan e-posta adresi ve şifre ile giriş yapılabildiği kontrol edilir
  Background:
    * Go to "url"


  Scenario: TC01 Kullanıcı, ana sayfa veya ilgili bağlantılar üzerinden giriş sayfasına erişebilmelidir.


    * The user clicks on the LOGIN button at the top right corner of the page
    * It is checked whether the login page is opened
    * 2 seconds pause
    * Close the page

  Scenario: TC02 Kullanıcı, giriş sayfasında yer alan ikonun doğru şekilde görüntülendiğini doğrulayabilmelidir.


    * The user clicks on the LOGIN button at the top right corner of the page
    * It is checked if there is a picture displayed on the right side of the page
    * Close the page

  Scenario: TC03 Kullanıcı, giriş sayfasında "Fikirlerinizi gerçeğe dönüştürün" alıntısının doğru şekilde görüntülendiğini doğrulayabilmelidir.


    * The user clicks on the LOGIN button at the top right corner of the page
    * It is checked if there is a TURN YOUR IDEAS INTO REALITY quote on the right side of the page
    * Close the page

  Scenario: TC04 Kullanıcı, giriş sayfasında giriş formunun doğru şekilde görüntülendiğini ve gerekli alanların eksiksiz olduğunu doğrulayabilmelidir.


    * The user clicks on the LOGIN button at the top right corner of the page
    * It is checked if there is a sign-in form on the left side of the page
    * Close the page

  Scenario: TC05 Kullanıcı, giriş sayfasında giriş butonunun doğru şekilde görüntülendiğini ve işlevsel olarak çalıştığını doğrulayabilmelidir.


    * The user clicks on the LOGIN button at the top right corner of the page
    * It is checked if there is a SIGN IN button below the sign-in form
    * Close the page

  Scenario: TC06 Kullanıcı, giriş sayfasında "Şifremi Unuttum" bağlantısının görüntülendiğini ve doğru şekilde çalıştığını doğrulayabilmelidir.


    * The user clicks on the LOGIN button at the top right corner of the page
    * It is checked if there is a link below the sign-in form for those who forget their password
    * Close the page

  Scenario: TC07 Kullanıcı, giriş sayfasında giriş formunun altında yer alan giriş bağlantısının doğru şekilde görüntülendiğini ve çalıştığını doğrulayabilmelidir.


    * The user clicks on the LOGIN button at the top right corner of the page
    * It is checked if there is a link below the sign-in form for those who want to sign up
    * Close the page


  Scenario: TC08 Kullanıcı, geçersiz e-posta veya şifre ile giriş yapmaya çalıştığında sistem uygun bir hata mesajı göstermelidir.


    * The user clicks on the LOGIN button at the top right corner of the page
    * The user types in the invalid mail address to the mail textbox inside the sign-in form
    * The user types in the invalid password to the password textbox inside the sign-in form
    * The user clicks on the SIGN IN button
    * It is checked if the error message is displayed
    * Close the page

  Scenario: TC09 Kullanıcı, geçerli bir e-posta adresi ve geçersiz bir şifre ile giriş yapmaya çalıştığında sistem uygun bir hata mesajı göstermelidir.


    * Click on the login link, Enter "elifCustomerEmail" and "invalidPassword" and click sign in
    * Close the page

  Scenario: TC10 Kullanıcı, geçerli bir e-posta adresi ve geçersiz bir şifre ile giriş yapmaya çalıştığında sistem uygun bir hata mesajı göstermelidir.


    * Click on the login link, Enter "invalidCustomerEmail" and "password" and click sign in
    * Close the page

  Scenario: TC11 Kullanıcı, geçerli bir telefon numarası ve geçersiz bir şifre ile giriş yapmaya çalıştığında sistem uygun bir hata mesajı göstermelidir.


    * Click on the login link, Enter "elifCustomerPhone" and "invalidPassword" and click sign in
    * Close the page

  Scenario: TC12 Kullanıcı, geçersiz bir telefon numarası ve geçerli bir şifre ile giriş yapmaya çalıştığında sistem uygun bir hata mesajı göstermelidir.


    * Click on the login link, Enter "invalidPhoneNumber" and "password" and click sign in
    * Close the page
















