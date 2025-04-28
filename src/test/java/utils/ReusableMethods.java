package utils;

import org.junit.Assert;
import org.openqa.selenium.*;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.*;
import pages.AdminDashboard;
import pages.UserDashboard;
import pages.VisitorHomePage;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.util.*;
import java.util.function.Function;

public class ReusableMethods {
    private static int timeout = 5;

    public static String getScreenshot(String name) throws IOException {
        // naming the screenshot with the current date to avoid duplication
        String date = new SimpleDateFormat("yyyyMMddhhmmss").format(new Date());

        // TakesScreenshot is an interface of selenium that takes the screenshot
        TakesScreenshot ts = (TakesScreenshot) Driver.getDriver();
        File source = ts.getScreenshotAs(OutputType.FILE);
        // full path to the screenshot location
        String target = System.getProperty("user.dir") + "/raporlar/Screenshots/" + name + date + ".png";

        File finalDestination = new File(target);
        // save the screenshot to the path given
        //FileUtils.copyFile(source, finalDestination);

        return target;
    }

    //========Switching Window=====//
    public static void switchToWindow(String targetTitle) {
        String origin = Driver.getDriver().getWindowHandle();
        for (String handle : Driver.getDriver().getWindowHandles()) {
            Driver.getDriver().switchTo().window(handle);
            if (Driver.getDriver().getTitle().equals(targetTitle)) {
                return;
            }
        }
        Driver.getDriver().switchTo().window(origin);
    }

    //========Hover Over=====//
    public static void hover(WebElement element) {
        Actions actions = new Actions(Driver.getDriver());
        actions.moveToElement(element).perform();
    }

    //==========Return a list of string given a list of Web Element====////
    public static List<String> getElementsText(List<WebElement> list) {
        List<String> elemTexts = new ArrayList<>();
        for (WebElement el : list) {
            if (!el.getText().isEmpty()) {
                elemTexts.add(el.getText());
            }
        }
        return elemTexts;
    }

    public  static void visibleWebElement(String visibleElement) {

        WebElement visibleLogin= Driver.getDriver().findElement(By.xpath("//*[contains(text(),'" + visibleElement + "')]"));
        Assert.assertTrue(visibleLogin.isDisplayed());
    }
    public  static void clickHeaderElementLink(String headerElementLink) {

        WebElement element = Driver.getDriver().findElement(By.xpath("(//a[text()='"+headerElementLink +"'])[1]"));
        waitAndClick(element);
    }

    public  static void clickWebElement(String textName) {

        WebElement element = Driver.getDriver().findElement(By.xpath("//*[contains(text(),'" + textName + "')]"));
        waitAndClick(element);
    }

    //========Returns the Text of the element given an element locator==//
    public static List<String> getElementsText(By locator) {
        List<WebElement> elems = Driver.getDriver().findElements(locator);
        List<String> elemTexts = new ArrayList<>();
        for (WebElement el : elems) {
            if (!el.getText().isEmpty()) {
                elemTexts.add(el.getText());
            }
        }
        return elemTexts;
    }

    //===============Thread.sleep Wait==============//
    public static void waitFor(int sec) {
        try {
            Thread.sleep(sec * 1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    //===============Explicit Wait==============//
    public static WebElement waitForVisibility(WebElement element, int timeToWaitInSec) {
        WebDriverWait wait = new WebDriverWait(Driver.getDriver(), Duration.ofSeconds(10));
        return wait.until(ExpectedConditions.visibilityOf(element));
    }

    public static void waitForPageToLoad(long timeOutInSeconds) {
        ExpectedCondition<Boolean> expectation = new ExpectedCondition<Boolean>() {
            public Boolean apply(WebDriver driver) {
                return ((JavascriptExecutor) driver).executeScript("return document.readyState").equals("complete");
            }
        };
        try {
            System.out.println("Waiting for page to load...");
            WebDriverWait wait = new WebDriverWait(Driver.getDriver(), Duration.ofSeconds(10));
            wait.until(expectation);
        } catch (Throwable error) {
            System.out.println(
                    "Timeout waiting for Page Load Request to complete after " + timeOutInSeconds + " seconds");
        }
    }

    //======Fluent Wait====//
    public static WebElement fluentWait(final WebElement webElement, int timeinsec) {
        FluentWait<WebDriver> wait = new FluentWait<WebDriver>(Driver.getDriver())
                .withTimeout(Duration.ofSeconds(15)).pollingEvery(Duration.ofSeconds(15))
                .ignoring(NoSuchElementException.class);
        WebElement element = wait.until(new Function<WebDriver, WebElement>() {
            public WebElement apply(WebDriver driver) {
                return webElement;
            }
        });
        return element;
    }

    /**
     * Performs double click action on an element
     *
     * @param element
     */
    public static void doubleClick(WebElement element) {
        new Actions(Driver.getDriver()).doubleClick(element).build().perform();
    }

    /**
     * @param element
     * @param check
     */
    public static void selectCheckBox(WebElement element, boolean check) {
        if (check) {
            if (!element.isSelected()) {
                element.click();
            }
        } else {
            if (element.isSelected()) {
                element.click();
            }
        }
    }

    /**
     * Selects a random value from a dropdown list and returns the selected Web Element
     *
     * @param select
     * @return
     */
    public static WebElement selectRandomTextFromDropdown(Select select) {
        Random random = new Random();
        List<WebElement> weblist = select.getOptions();
        int optionIndex = 1 + random.nextInt(weblist.size() - 1);
        select.selectByIndex(optionIndex);
        return select.getFirstSelectedOption();
    }

    public static void waitAndClick(WebElement element, int timeout) {
        for (int i = 0; i < timeout; i++) {
            try {
                element.click();
                return;
            } catch (WebDriverException e) {
                wait(1);
            }
        }
    }

    public static void waitAndClick(WebElement element) {
        for (int i = 0; i < timeout; i++) {
            try {
                element.click();
                return;
            } catch (WebDriverException e) {
                wait(1);
            }
        }
    }

    public static void waitAndSendText(WebElement element, String text, int timeout) {
        for (int i = 0; i < timeout; i++) {
            try {
                element.sendKeys(text);
                return;
            } catch (WebDriverException e) {
                wait(1);
            }
        }
    }

    public static void waitAndSendText(WebElement element, String text) {
        for (int i = 0; i < timeout; i++) {
            try {
                element.sendKeys(text);
                return;
            } catch (WebDriverException e) {
                wait(1);
            }
        }
    }

    public static void waitAndSendTextWithDefaultTime(WebElement element, String text) {
        for (int i = 0; i < timeout; i++) {
            try {
                element.sendKeys(text);
                return;
            } catch (WebDriverException e) {
                wait(1);
            }
        }
    }

    public static String waitAndGetText(WebElement element, int timeout) {
        String text = "";
        for (int i = 0; i < timeout; i++) {
            try {
                text = element.getText();
                return text;
            } catch (WebDriverException e) {
                wait(1);
            }
        }
        return null;
    }

    public static void wait2(int sec) {
        try {
            Thread.sleep(1000 * sec);
        } catch (NoSuchElementException e) {
            e.printStackTrace();
        } catch (TimeoutException e) {
            e.printStackTrace();
        } catch (StaleElementReferenceException e) {
            e.printStackTrace();
        } catch (ElementClickInterceptedException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //5 seconds
    public static void waitAndClickElement(WebElement element, int seconds) {
        for (int i = 0; i < seconds; i++) {

            try {
                element.click();
                break;
            } catch (Exception e) {
                wait2(1);
            }
        }
    }

    public static void wait(int secs) {

        try {
            Thread.sleep(1000 * secs);
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (TimeoutException e) {
            e.printStackTrace();
        } catch (NoSuchElementException e) {
            e.printStackTrace();
        } catch (StaleElementReferenceException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static WebElement waitForVisibility(By locator, int timeout) {
        WebDriverWait wait = new WebDriverWait(Driver.getDriver(), Duration.ofSeconds(timeout));
        return wait.until(ExpectedConditions.visibilityOfElementLocated(locator));
    }

    public static Boolean waitForInVisibility(By locator, int timeout) {
        WebDriverWait wait = new WebDriverWait(Driver.getDriver(), Duration.ofSeconds(timeout));
        return wait.until(ExpectedConditions.invisibilityOfElementLocated(locator));
    }

    public static WebElement waitForClickablility(WebElement element, int timeout) {
        WebDriverWait wait = new WebDriverWait(Driver.getDriver(), Duration.ofSeconds(timeout));
        return wait.until(ExpectedConditions.elementToBeClickable(element));
    }

    public static WebElement waitForClickablility(By locator, int timeout) {
        WebDriverWait wait = new WebDriverWait(Driver.getDriver(), Duration.ofSeconds(timeout));
        return wait.until(ExpectedConditions.elementToBeClickable(locator));
    }

    public static void executeJScommand(WebElement element, String command) {
        JavascriptExecutor jse = (JavascriptExecutor) Driver.getDriver();
        jse.executeScript(command, element);
    }

    public static void selectAnItemFromDropdown(WebElement item, String selectableItem) {
        wait(5);
        Select select = new Select(item);
        for (int i = 0; i < select.getOptions().size(); i++) {
            if (select.getOptions().get(i).getText().equalsIgnoreCase(selectableItem)) {
                select.getOptions().get(i).click();
                break;
            }
        }
    }

    /**
     * Clicks on an element using JavaScript
     *
     * @param element
     */
    public static void clickWithJS(WebElement element) {
        // ((JavascriptExecutor) Driver.getDriver()).executeScript("arguments[0].scrollIntoView(true);", element);
        ((JavascriptExecutor) Driver.getDriver()).executeScript("arguments[0].click();", element);
    }

    /**
     * Clicks on an element using JavaScript
     *
     * @param elements
     */
    public static void clickWithJSAsList(List<WebElement> elements) {
        for (WebElement each : elements) {
            ((JavascriptExecutor) Driver.getDriver()).executeScript("arguments[0].scrollIntoView(true);", waitForVisibility(each, 5));
            ((JavascriptExecutor) Driver.getDriver()).executeScript("arguments[0].click();", each);
        }
    }

    public static void selectByVisibleText(WebElement element, String text) {
        Select objSelect = new Select(element);
        objSelect.selectByVisibleText(text);
    }

    public static void selectByIndex(WebElement element, int index) {
        Select objSelect = new Select(element);
        objSelect.selectByIndex(index);
    }

    public static void selectByValue(WebElement element, String value) {
        Select objSelect = new Select(element);
        List<WebElement> elementCount = objSelect.getOptions();
        objSelect.selectByValue(value);
        System.out.println("number of elements: " + elementCount.size());
    }

    public static void sleep(int timeOut) {
        try {
            Thread.sleep(timeOut);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void waitAndClickLocationText(WebElement element, String value) {
        Driver.getDriver().findElement(By.xpath("//*[text()='" + value + "']")).click();
    }

    public static void scrollIntoViewJS(WebElement element) {
        JavascriptExecutor jsexecutor = ((JavascriptExecutor) Driver.getDriver());
        jsexecutor.executeScript("arguments[0].scrollIntoView(true);", element);
    }

    public static void scrollWithPixelsJS(int x, int y) {
        JavascriptExecutor js = (JavascriptExecutor) Driver.getDriver();
        js.executeScript("window.scrollBy(0,500)");
        js.executeScript("window.scrollBy(" + x + "," + y + ")");
    }

    public static void uploadFile(String gonderilecekDosyaContentRoot) {
        String herkesteFarkliOlan = System.getProperty("user.dir");
        String herkesteAyniOlan = gonderilecekDosyaContentRoot;
        String dosyaYolu = herkesteFarkliOlan + herkesteAyniOlan;
    }


    public static List<String> strListeOlustur(List<WebElement> elementler) {
        List<String> stringlerList = new ArrayList<>();
        for (WebElement each : elementler) {
            stringlerList.add(each.getText());
        }
        return stringlerList;
    }

    static VisitorHomePage visitorHomePage = new VisitorHomePage();
    static UserDashboard userDashboard = new UserDashboard();
    static AdminDashboard adminDashboard = new AdminDashboard();

    public static WebElement footerLinkleri(String link) {
        switch (link) {
            case "About Us":
                return visitorHomePage.linkFooterAboutUs;
            case "The blog":
                return visitorHomePage.linkFooterBlog;
            case "Dashboard":
                return visitorHomePage.linkFooterDashboard;
            case "My Profile":
                return visitorHomePage.linkFooterMyProfile;
            case "My Order":
                return visitorHomePage.linkFooterMyOrder;
            case "Help&Contact":
                return visitorHomePage.linkHelpContact;
            case "Track Order":
                return visitorHomePage.linkTrackOrder;
            case "Google Play":
                return visitorHomePage.buttonGooglePlayFooter;
            case "Apple Stor":
                return visitorHomePage.buttonAppStoreFooter;
            case "Enter email address":
                return visitorHomePage.textBoxFooterEmail;
            case "SUBSCRIBE":
                return visitorHomePage.buttonSubscribe;
            case "YouTube":
                return visitorHomePage.iconFooterYoutube;
            case "LinkedIn":
                return visitorHomePage.iconFooterLinkedin;
            case "Facebook":
                return visitorHomePage.iconFooterFacebook;
            case "Instagram":
                return visitorHomePage.iconFooterInstagram;
            case "Copyright © 2024. All rights reserved.":
                return visitorHomePage.labelCopyrightAll;

            default:
                return visitorHomePage.linkReturnExchange;

        }

    }

    public static WebElement clickFooterLinkleri(String link) {
        switch (link) {
            case "About Us":
                wait(2);
                visitorHomePage.linkFooterAboutUs.click();
                wait(2);
                String expectedUrl = "https://qa.buysellcycle.com/about-us";
                String actualUrl = Driver.getDriver().getCurrentUrl();
                Assert.assertEquals(expectedUrl, actualUrl);
                scrollIntoViewJS(visitorHomePage.footer);
                return visitorHomePage.linkFooterAboutUs;
            case "The blog":
                wait(2);
                visitorHomePage.linkFooterBlog.click();
                wait(2);
                expectedUrl = "https://qa.buysellcycle.com/blog";
                actualUrl = Driver.getDriver().getCurrentUrl();
                Assert.assertEquals(expectedUrl, actualUrl);
                scrollIntoViewJS(visitorHomePage.footer);
                return visitorHomePage.linkFooterBlog;
            case "Dashboard":
                wait(2);
                visitorHomePage.linkFooterDashboard.click();
                wait(2);
                expectedUrl = "https://qa.buysellcycle.com/login";
                actualUrl = Driver.getDriver().getCurrentUrl();
                Assert.assertEquals(expectedUrl, actualUrl);
                Driver.getDriver().get("https://qa.buysellcycle.com");
                scrollIntoViewJS(visitorHomePage.footer);
                return visitorHomePage.linkFooterDashboard;
            case "My Profile":
                wait(2);
                visitorHomePage.linkFooterMyProfile.click();
                wait(2);
                expectedUrl = "https://qa.buysellcycle.com/login";
                actualUrl = Driver.getDriver().getCurrentUrl();
                Assert.assertEquals(expectedUrl, actualUrl);
                Driver.getDriver().get("https://qa.buysellcycle.com");
                scrollIntoViewJS(visitorHomePage.footer);
                return visitorHomePage.linkFooterMyProfile;
            case "My Order":
                wait(2);
                visitorHomePage.linkFooterMyOrder.click();
                wait(2);
                expectedUrl = "https://qa.buysellcycle.com/login";
                actualUrl = Driver.getDriver().getCurrentUrl();
                Assert.assertEquals(expectedUrl, actualUrl);
                Driver.getDriver().get("https://qa.buysellcycle.com");
                scrollIntoViewJS(visitorHomePage.footer);
                return visitorHomePage.linkFooterMyOrder;
            case "Help&Contact":
                wait(2);
                visitorHomePage.linkHelpContact.click();
                wait(2);
                expectedUrl = "https://qa.buysellcycle.com/contact-us";
                actualUrl = Driver.getDriver().getCurrentUrl();
                Assert.assertEquals(expectedUrl, actualUrl);
                scrollIntoViewJS(visitorHomePage.footer);
                return visitorHomePage.linkHelpContact;
            case "Track Order":
                wait(2);
                visitorHomePage.linkTrackOrder.click();
                wait(2);
                expectedUrl = "https://qa.buysellcycle.com/track-order";
                actualUrl = Driver.getDriver().getCurrentUrl();
                Assert.assertEquals(expectedUrl, actualUrl);
                scrollIntoViewJS(visitorHomePage.footer);
                return visitorHomePage.linkTrackOrder;
            case "Google Play":
                wait(2);
                visitorHomePage.buttonGooglePlayFooter.click();
                wait(2);
                expectedUrl = "https://play.google.com/";
                actualUrl = Driver.getDriver().getCurrentUrl();
                Assert.assertTrue(actualUrl.contains(expectedUrl));
                Driver.getDriver().get("https://qa.buysellcycle.com");
                scrollIntoViewJS(visitorHomePage.footer);
                return visitorHomePage.buttonGooglePlayFooter;
            case "Apple Store":
                wait(2);
                visitorHomePage.buttonAppStoreFooter.click();
                wait(2);
                expectedUrl = "https://www.apple.com/app-store/";
                actualUrl = Driver.getDriver().getCurrentUrl();
                Assert.assertEquals(expectedUrl, actualUrl);
                Driver.getDriver().get("https://qa.buysellcycle.com");
                scrollIntoViewJS(visitorHomePage.footer);
                return visitorHomePage.buttonAppStoreFooter;
            case "YouTube":
                wait(2);
                visitorHomePage.iconFooterYoutube.click();
                wait(2);
                Set<String> windowHandles = Driver.getDriver().getWindowHandles();

// Ana pencere tanımlayıcısını kaydedin
                String mainWindowHandle = Driver.getDriver().getWindowHandle();

// Yeni pencereye veya sekmeye geçiş yapın
                for (String handle : windowHandles) {
                    if (!handle.equals(mainWindowHandle)) {
                        Driver.getDriver().switchTo().window(handle);
                        break;
                    }
                }
                expectedUrl = "https://www.youtube.com/";
                actualUrl = Driver.getDriver().getCurrentUrl();
                Assert.assertEquals(expectedUrl, actualUrl);
                wait(2);
                // Driver.closeDriver();
                Driver.getDriver().switchTo().window(mainWindowHandle);
                // Driver.getDriver().get("https://qa.buysellcycle.com");
                scrollIntoViewJS(visitorHomePage.footer);
                return visitorHomePage.iconFooterYoutube;
            case "LinkedIn":
                wait(2);
                visitorHomePage.iconFooterLinkedin.click();
                wait(5);
                Set<String> windowHandles2 = Driver.getDriver().getWindowHandles();

// Ana pencere tanımlayıcısını kaydedin
                mainWindowHandle = Driver.getDriver().getWindowHandle();

// YouTube ve LinkedIn sayfalarının URL'lerini içeren hedef sayfayı bulun
                String targetPageUrl = null;
                for (String handle : windowHandles2) {
                    if (!handle.equals(mainWindowHandle)) {
                        Driver.getDriver().switchTo().window(handle);
                        String currentUrl = Driver.getDriver().getCurrentUrl();
                        if (currentUrl.contains("linkedin.com")) {
                            //  targetPageUrl = currentUrl;

                            expectedUrl = "https://www.linkedin.com/";
                            actualUrl = Driver.getDriver().getCurrentUrl();
                            Assert.assertEquals(expectedUrl, actualUrl);
                            break;
                        }
                    }
                }

                Driver.getDriver().switchTo().window(mainWindowHandle);
                // Driver.getDriver().get("https://qa.buysellcycle.com");
                scrollIntoViewJS(visitorHomePage.footer);
                return visitorHomePage.iconFooterLinkedin;
            case "Facebook":
                wait(2);
                visitorHomePage.iconFooterFacebook.click();
                wait(5);
                Set<String> windowHandles3 = Driver.getDriver().getWindowHandles();

// Ana pencere tanımlayıcısını kaydedin
                mainWindowHandle = Driver.getDriver().getWindowHandle();
                // String targetPageUrl = null;
                for (String handle : windowHandles3) {
                    if (!handle.equals(mainWindowHandle)) {
                        Driver.getDriver().switchTo().window(handle);
                        String currentUrl = Driver.getDriver().getCurrentUrl();
                        if (currentUrl.contains("facebook.com")) {
                            //  targetPageUrl = currentUrl;

                            expectedUrl = "https://www.facebook.com/";
                            actualUrl = Driver.getDriver().getCurrentUrl();
                            Assert.assertEquals(expectedUrl, actualUrl);
                            break;
                        }
                    }
                }
                Driver.getDriver().switchTo().window(mainWindowHandle);
                // Driver.getDriver().get("https://qa.buysellcycle.com");
                scrollIntoViewJS(visitorHomePage.footer);
                return visitorHomePage.iconFooterFacebook;
            case "Instagram":
                wait(2);
                visitorHomePage.iconFooterInstagram.click();
                wait(5);
                Set<String> windowHandles4 = Driver.getDriver().getWindowHandles();

// Ana pencere tanımlayıcısını kaydedin
                mainWindowHandle = Driver.getDriver().getWindowHandle();
                // String targetPageUrl = null;
                for (String handle : windowHandles4) {
                    if (!handle.equals(mainWindowHandle)) {
                        Driver.getDriver().switchTo().window(handle);
                        String currentUrl = Driver.getDriver().getCurrentUrl();
                        if (currentUrl.contains("facebook.com")) {
                            //  targetPageUrl = currentUrl;

                            expectedUrl = "https://www.facebook.com/";
                            actualUrl = Driver.getDriver().getCurrentUrl();
                            Assert.assertEquals(expectedUrl, actualUrl);
                            break;
                        }
                    }
                }
                Driver.getDriver().switchTo().window(mainWindowHandle);
                // Driver.getDriver().get("https://qa.buysellcycle.com");
                scrollIntoViewJS(visitorHomePage.footer);
                return visitorHomePage.iconFooterInstagram;
            case "Support Ticket":
                wait(2);
                //scrollIntoViewJS(userDashboard.linkUserSupportTicket);
                // userDashboard.linkUserSupportTicket.click();
                //wait(2);
                expectedUrl = ConfigReader.getProperty("supportTicketUrl");
                actualUrl = Driver.getDriver().getCurrentUrl();
                Assert.assertEquals(expectedUrl, actualUrl);

                return userDashboard.linkUserSupportTicket;

            default:
                wait(2);
                clickWithJS(visitorHomePage.linkReturnExchange);
                wait(5);
                expectedUrl = "https://qa.buysellcycle.com/return-exchange";
                actualUrl = Driver.getDriver().getCurrentUrl();
                Assert.assertEquals(expectedUrl, actualUrl);
                scrollIntoViewJS(visitorHomePage.footer);
                return visitorHomePage.linkReturnExchange;

        }


    }
    public static WebElement staffLinkleri(String info){
        switch (info){
            case "Staff link":
                wait(1);
                return adminDashboard.linkStaff;
            case "View link":
                wait(1);
                return adminDashboard.linkViewStaff.get(1);
            case "Edit link":
                wait(1);
                return adminDashboard.linkViewStaff.get(2);
            case "Delete link":
                wait(1);
                return adminDashboard.linkViewStaff.get(3);
            case "Save button":
                wait(1);
                return adminDashboard.buttonSave;
            case "Add New Staff button":
                wait(1);
                return adminDashboard.buttonAddNewStaff;

            default:
                wait(1);
                return adminDashboard.textBoxQuickSearchStaff;
        }
    }

    public static WebElement supportTicketLinkleri(String info) {

        switch (info) {
            case "Status":
                return userDashboard.linkStatusInfo;
            case "Priority":
                return userDashboard.linkPriorityInfo;
            case "Category":
                return userDashboard.linkCategoryInfo;
            case "CREATE NOW":
                return userDashboard.buttonCreateNow;
            case "REPLY NOW":
                return userDashboard.buttonReplyNow;
            case "ADD NEW":
                return userDashboard.buttonAddNewSTicket;

            default:
                return userDashboard.linkAll;

        }
    }


      }


