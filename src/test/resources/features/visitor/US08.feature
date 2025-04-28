@us8
Feature: US008 Hakkımızda sayfasına erişimin olduğu kontrol edilir
  Background:
    * Go to "url"

  Scenario: TC01 Hakkımızda sayfasının görüntülenmesi

    * User clicks on the About Us link and displays About Us page
    * User confirms that the displayed  Client Worldwide, Successful Project, Work Employed,Planning Services boards matches the expected details on about page.
    * User confirms the Team Members section
    * User confirms that On the About Us page, the characters, statuses and pictures of Avery Collins, Emily Pattinson, Jason Statham, Jaxon Westwood should be visible on the page
    * Close the page
