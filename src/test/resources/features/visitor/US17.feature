@us17
Feature: US17 Kullanici Panelinde Satın Alma Gecmisinin Goruntulenmesi Kontrol Edilir

  Background:
    * Go to "url"


  Scenario: TC01 Kullanıcı, panel kenar çubuğunda Satın Alma Geçmişi menüsünü doğru şekilde görüntüleyebilmelidir.

    * Displays und click the headings (Track Your Order) on the top right side
    * Close the page


  Scenario: TC02 Kullanıcı, Satın Alma Geçmişi sayfasına gittiğinde, tüm alışveriş geçmişini doğru şekilde görüntüleyebilmelidir.

    * Displays und click the headings ( Compare) on the top right side
    * Close the page


  Scenario: TC03 Kullanıcı, Satın Alma Geçmişi sayfasında ödeme durumu filtreleme seçeneğini kullanarak yalnızca belirli ödeme durumlarındaki siparişleri görüntüleyebilmelidir.

    * Displays und click the headings ( Wishlist) on the top right side. Click the BuyCell logo
    * Close the page


  Scenario: TC04 Kullanıcı, fatura görüntüleme sayfasına eriştiğinde, fatura bilgilerini doğru şekilde görüntüleyebilmelidir.

    * Displays und click the headings (Cart) on the top right side
    * Close the page






