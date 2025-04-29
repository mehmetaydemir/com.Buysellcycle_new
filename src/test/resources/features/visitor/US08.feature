@us8
Feature: US08 Hakkımızda sayfasına erişimin olduğu kontrol edilir
  Background:
    * Go to "url"

  Scenario: TC01 Kullanıcı, site üzerinden Hakkımızda sayfasına erişebilmeli ve sayfa içeriğini doğru şekilde görüntüleyebilmelidir.


    * User clicks on the About Us link and displays About Us page
    * User confirms that the displayed  Client Worldwide, Successful Project, Work Employed,Planning Services boards matches the expected details on about page.
    * User confirms the Team Members section
    * User confirms that On the About Us page, the characters, statuses and pictures of Avery Collins, Emily Pattinson, Jason Statham, Jaxon Westwood should be visible on the page
    * Close the page
