Feature: US04 Kullanıcının siteye kayıt olabildiği kontrol edilir

  Background:
    * Go to "url"


  Scenario: TC_01 Ana Sayfadaki Kayıt butonunun görüntülenmesi
    * the user verifies that the Register button link is visible on the home page
    * the user verifies that the Register button link is active on the home page
    * Close the page

  Scenario: TC_02 Kayıt Sayfasında fonksiyonların görüntülenmesi
    * the user clicks the Register button link on the home page
    * the user verifies the image and text in the right section
    * the user validates the signUp form in the left section
    * the user verifies that the SignUp button is visible and active
    * Close the page

  Scenario: TC_03 Kayıt sayfasındaki metin kutularındaki boş alanın test edilmesi
    * the user clicks the Register button link on the home page
    * the user leaves all fields blank in the SignUp form and clicks the SignUp button
    * the user confirmed that registration failed
    * Close the page

  Scenario: TC_04 Kullanım şartları ve gizlilik politikası testi
    * the user clicks the Register button link on the home page
    * the user Terms of Service and Privacy Policy checkbox radioBotton click
    * the user clicks SignUp button link
    * the user confirmed that registration failed checkButton
    * Close the page

  Scenario: TC_05 Telefon numarası doğrulama testi
    * the user clicks the Register button link on the home page
    * the user enters a number in a valid telephone format
    * the user clicks SignUp button link
    * It is confirmed that registration valid phone format
    * Close the page

  Scenario: TC_06 Mail doğrulama testi
    * the user clicks the Register button link on the home page
    * the user enters a valid email address
    * the user clicks SignUp button link
    * It is confirmed that registration valid email format
    * Close the page

  Scenario: TC_07 Şifre doğrulama testi
    * the user clicks the Register button link on the home page
    * the user enters a valid password "Az12345." that meets criteria
    * the user clicks SignUp button link
    * the user confirms that it does not receive error message
    * Close the page

  Scenario: TC_08 Kayıt Sayfasından Giriş Sayfasına Geçiş Testi
    * the user clicks the Register button link on the home page
    * the user clicks the SignIn buttonLink
    * 3 seconds pause
    * the user verifies that it is possible to navigate to the SignIn page
    * Close the page

  Scenario: TC09 Kullanıcının, tüm alanlara doğru bilgileri girerek kayıt sayfasına kaydolması
    * User clicks on -Register button- and displays "registerUrl" the Sign Up page.
    * User enters a valid "ihsanName" on -First Name box-.
    * User enters a valid "ihsanLastName" on -Last Name box-.
    * User enters a valid "ihsanEmail" clicks on -Email or Phone box-.
    * User enters a valid "ihsanValidPassword" on -Password box-.
    * User enters a valid "ihsanValidPassword" on -Confirm Password- box.
    * User clicks on Sign Up button.
    * User verifies that he-she registered.
    * Close the page

  Scenario: TC10 Kullanıcının, ad alanını doldurmadan kayıt sayfasına kaydolamadığının doğrulanması
    * User clicks on -Register button- and displays "registerUrl" the Sign Up page.
    * User enters a valid "ihsanLastName" on -Last Name box-.
    * User enters a valid "ihsanEmail" clicks on -Email or Phone box-.
    * User enters a valid "ihsanValidPassword" on -Password box-.
    * User enters a valid "ihsanValidPassword" on -Confirm Password- box.
    * User clicks on Sign Up button.
    * User verifies that he-she could not register without name.
    * Close the page

  Scenario: TC11 Kullanıcının mobil alanı doldurmadan kayıt sayfasına kayıt olamadığının doğrulanması
    * User clicks on -Register button- and displays "registerUrl" the Sign Up page.
    * User enters a valid "ihsanName" on -First Name box-.
    * User enters a valid "ihsanLastName" on -Last Name box-.
    * User enters a valid "ihsanValidPassword" on -Password box-.
    * User enters a valid "ihsanValidPassword" on -Confirm Password- box.
    * User clicks on Sign Up button.
    * User verifies that he-she could not register without mobile.
    * Close the page

  Scenario: TC12 Kullanıcının e-posta alanı doldurmadan kayıt sayfasına kayıt olamadığının doğrulanması
    * User clicks on -Register button- and displays "registerUrl" the Sign Up page.
    * User enters a valid "ihsanName" on -First Name box-.
    * User enters a valid "ihsanLastName" on -Last Name box-.
    * User enters a valid "ihsanValidPassword" on -Password box-.
    * User enters a valid "ihsanValidPassword" on -Confirm Password- box.
    * User clicks on Sign Up button.
    * User verifies that he-she could not register without email.
    * Close the page

  Scenario Outline: TC13 Kullanıcının geçersiz şifre ile kayıt olamadığının doğrulanması
    * User clicks on -Register button- and displays "registerUrl" the Sign Up page.
    * User enters a valid "ihsanName" on -First Name box-.
    * User enters a valid "ihsanLastName" on -Last Name box-.
    * User enters a valid "ihsanNewEmail" clicks on -Email or Phone box-.
    * User enters a valid "<password>" on -Password box-.
    * User enters a valid "<confirm password>" on -Confirm Password- box.
    * User clicks on Sign Up button.
    * User verifies that he-she could not register without valid password.
    * Close the page
    Examples:
      | password              | confirm password      |
      | ihsanInvalidPassword  | ihsanInvalidPassword  |
      | ihsanInvalidPassword2 | ihsanInvalidPassword2 |
      | ihsanInvalidPassword3 | ihsanInvalidPassword3 |
      | ihsanInvalidPassword4 | ihsanInvalidPassword4 |
      | ihsanInvalidPassword5 | ihsanInvalidPassword5 |

  Scenario: TC14 Kullanıcının aynı şifreyi girmeden kayıt olamadığının doğrulanması
    * User clicks on -Register button- and displays "registerUrl" the Sign Up page.
    * User enters a valid "ihsanName" on -First Name box-.
    * User enters a valid "ihsanLastName" on -Last Name box-.
    * User enters a valid "ihsanEmail" clicks on -Email or Phone box-.
    * User enters a valid "ihsanValidPassword" on -Password box-.
    * User enters a valid "ihsanValidPassword2" on -Confirm Password- box.
    * User clicks on Sign Up button.
    * User verifies that he-she could not register without entering the same password.
    * Close the page
