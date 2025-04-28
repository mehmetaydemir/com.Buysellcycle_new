package pages;

import org.junit.Assert;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import utils.ReusableMethods;

import java.util.List;

public class AdminDashboard extends Base{
    //------------------------------------------------------------------------------------------------------------------
    @FindBy(xpath = "//*[text()='Products']")
    public WebElement dropDownProducts;

    @FindBy(xpath = "//*[text()='Product List']")
    public WebElement linkProductList;

    @FindBy(xpath = "//*[@href='#order_complete_data']")
    public WebElement linkSellerRequestProduct;

    @FindBy(xpath = "//*[@href='#product_disabled_data']")
    public WebElement linkDisabledProduct;

    @FindBy(xpath = "//*[@href='#product_sku_data']")
    public WebElement linkProductBySKU;

    @FindBy(xpath = "(//*[@class='mb-0 mr-30 mb_xs_15px mb_sm_20px'])[1]")
    public WebElement labelProductList;

    @FindBy(xpath = "(//*[@class='mb-0 mr-30 mb_xs_15px mb_sm_20px'])[2]")
    public WebElement labelSellerRequestProduct;

    @FindBy(xpath = "(//*[@class='mb-0 mr-30 mb_xs_15px mb_sm_20px'])[3]")
    public WebElement labelDisabledProduct;

    @FindBy(xpath = "(//*[@class='mb-0 mr-30 mb_xs_15px mb_sm_20px'])[4]")
    public WebElement labelProductBySKU;

    @FindBy(xpath = "(//thead)[1]/tr[1]/th")
    public List<WebElement> rowListProductList;

    @FindBy(xpath = "(//*[@type='search'])[1]")
    public WebElement textBoxQuickSearch;

    @FindBy(xpath = "(//tbody)[1]/tr[1]/td[2]")
    public WebElement labelSearchedProduct;

    @FindBy(xpath = "(//*[@class='slider round'])[1]")
    public WebElement radioButtonStatus;

    @FindBy(xpath = "//*[text()='Updated successfully!']")
    public WebElement labelStatusConfirm;

    @FindBy(xpath = "(//*[@id='dropdownMenu2'])[1]")
    public WebElement dropDownSelect;

    @FindBy(xpath = "(//*[text()='View'])[2]")
    public WebElement linkViewProduct;

    @FindBy(xpath = "(//*[text()='Edit'])[1]")
    public WebElement linkEditProduct;

    @FindBy(xpath = "(//*[text()='Clone'])[1]")
    public WebElement linkCloneProduct;

    @FindBy(xpath = "(//*[text()='Delete'])[1]")
    public WebElement linkDeleteProduct;

    @FindBy(xpath = "(//*[@id='dataDeleteBtn'])[2]")
    public WebElement buttonDeleteProduct;

    @FindBy(xpath = "//*[text()='Deleted successfully!']")
    public WebElement labelDeleteSuccess;


    //------------Nazime----------------------

    //US_38 dashboardside bar Add New Product link
    @FindBy(xpath = "//*[@id=\"sidebar_menu\"]/li[8]/ul/li[5]/a")
    public WebElement linkAddNewProduct;

    //US_38 dashboardside bar Add New Product link
    @FindBy(xpath = "//*[@id=\"sidebar_menu\"]/li[8]/a")
    public WebElement linkProducts;

    @FindBy (xpath = "//*[@id=\"choice_form\"]/ul/li")
    public List<WebElement> linkAddNewProductList;
    @FindBy (xpath = "//*[@id=\"GenaralInfo\"]/div/div[1]/div/div[1]/div")
    public List<WebElement> searchBoxProductInformation;

    @FindBy (xpath = "//*[@id=\"GenaralInfo\"]/div/div[1]/div/div[1]/div[20]/div[2]/div")
    public List<WebElement> searchBoxPhyscialProdukt;

    @FindBy (xpath = "//*[@id=\"GenaralInfo\"]/div/div[1]/div/div[2]/div")
    public List<WebElement> searchBoxPriceInfo;


    //US_38 dashboardside bar Add New Product link-General Information
    @FindBy(xpath = "(//*[@class='nav-item'])[1]")
    public WebElement linkGeneralInformation;

    //US_38 dashboardside bar Add New Product link-RelatedProduct;
    @FindBy(xpath = "(//*[@class='nav-item'])[2]")
    public WebElement linkRelatedProduct;

    //US_38 dashboardside bar Add New Product link-UpSaLE
    @FindBy(xpath = "(//*[@class='nav-item'])[3]")
    public WebElement linkUpSale;

    //US_38 dashboardside bar Add New Product link-CrossSale
    @FindBy(xpath = "(//*[@class='nav-item'])[4]")
    public WebElement linkCrossSale;

    //US_38 dashboardside bar Single radio button
    @FindBy(xpath = "//*[@id='single_prod']")
    public WebElement radioButtonSingle;

    //US_38 Add new Product variant radio button
    @FindBy(xpath = "//input[@id='product_type']")
    public WebElement radioButtonVariant;

    //US_38 Add new Product Name Box
    @FindBy(xpath = "(//*[@class='primary_input_field'])[1]")
    public WebElement searchBoxName;


    //US_38 Add new SubTitle  Box
    @FindBy(xpath = "//*[@id='subtitle_1']")
    public WebElement searchBoxSubTitle1;

    //US_38 Add new SubTitle2  Box
    @FindBy(xpath = "//*[@id='subtitle_2']")
    public WebElement searchBoxSubTitle2;

    //US_38 Add new Variant SKU  Box
    @FindBy(xpath = "//*[@id='variant_sku_prefix']")
    public WebElement searchBoxVariantSKU;

    //US_38 Add new Model Nummer Box
    @FindBy(xpath = "//*[@id='model_number']")
    public WebElement searchBoxModelNummer;

    //US_38 Add new Category Box
    @FindBy(className= "select2-selection__rendered")
    public WebElement searchBoxCategory;

    //US_38 Add new Brand Box
    @FindBy(xpath= "//*[@id='select2-brand_id-container']")
    public WebElement searchBoxBrand;

    //US_38 Add new Unit Box
    @FindBy(xpath= "//*[@id='error_unit_type']")
    public WebElement searchBoxUnit;

    //US_38 Add new MINIMUM ORDER QTY  Box
    @FindBy(xpath= "//*[@id='minimum_order_qty']")
    public WebElement searchBoxMinimumOrderQty;

    //US_38 Add new Maximum ORDER QTY  Box
    @FindBy(xpath= "//*[@id='max_order_qty']")
    public WebElement searchBoxMaximumOrderQty;

    //US_38 Add new tags Box
    @FindBy(className= "bootstrap-tagsinput")
    public WebElement searchBoxTags;

    //US_38 Products dropdown Category link
    @FindBy(xpath= "//*[@id=\"sidebar_menu\"]/li[8]/ul/li[1]/a")
    public WebElement linkCategory;

    //US_38 Products dropdown Brand link
    @FindBy(xpath= "//*[@id=\"sidebar_menu\"]/li[8]/ul/li[2]/a/text()")
    public WebElement linkBrand;

    //US_38 Products dropdown Units link
    @FindBy(xpath= "//*[@id=\"sidebar_menu\"]/li[8]/ul/li[4]/a/text()")
    public WebElement linkUnits;

    @FindBy(xpath= "(//I[@class='note-icon-picture'])[1]")
    public WebElement buttonPicture;

    @FindBy(xpath= "//input[@id='note-dialog-image-file-17121346018781']")
    public WebElement buttonDateiAuswählen;

    @FindBy(xpath= "//*[@id=\"choice_form\"]/div[3]/div[1]/div/text()")
    public WebElement labelWarningText;

    // save button
    @FindBy(xpath= "(//*[@class='primary_btn_2 mt-5 text-center saveBtn'])[1]")
    public WebElement buttonSaveProduct;

    // save Publish
    @FindBy(xpath= "(//*[@class='primary_btn_2 mt-5 text-center saveBtn'])[2]")
    public WebElement buttonSavePublishProduct;



    //-----------------------------------------
//***********************US_34/TC_01******************************************

    //Admin/Dashboard/SearchTextBox
    @FindBy(xpath = "//input[@id='search']")
    public WebElement searchBoxAdminClick;

    //Admin/Dashboard/SearchTextBox(dashbord yazısı girilecek)
    @FindBy(xpath = "(//div[@class='nav_title'])[1]")
    public WebElement textBoxDashboard;

    @FindBy(xpath = "//i[@class='ti-search']")
    public WebElement iconSerach;

    @FindBy(xpath = "//h3[@class='mb-0 mr-3 text-nowrap']")
    public WebElement textVerifyResult;

    @FindBy(xpath = "class='nav_icon_small'")
    public WebElement iconSmallSideBar;

    //Admin/Dashboard/MenüİconSideBar

    @FindBy(xpath = "(//i[@class='ti-menu'])[2]")
    public WebElement iconSmallSideBarClick;


    //Admin/Dashboard/CustomerInterface
    @FindBy(xpath = "(//div[@class='nav_title'])[2]")
    public WebElement buttonCustomerPanel;

    @FindBy(xpath = "//a[text()='My Profiles']")
    public WebElement buttonCostumerProfile;

    @FindBy(xpath = "(//h3[@class='mb-0 mr-30 mb_xs_15px mb_sm_20px'])[1]")
    public WebElement textVerify;

    @FindBy(xpath = "(//div[@class='nav_title'])[1]")
    public WebElement buttonDashboard;

    @FindBy(xpath = "//a[@data-type='today']")
    public WebElement buttonToday;

    @FindBy(xpath = "//h1[@class='gradient-color2 total_visitors']")
    public WebElement buttonVisitor;

    @FindBy(xpath = "//a[@data-type='week']")
    public WebElement buttonWeek;

    @FindBy(xpath = "//a[@data-type='year']")
    public WebElement buttonYear;


    //Admin/Dashboard/AllCustomerInterface
    @FindBy(xpath = "//*[@class='mm-collapse mm-show']")
    public WebElement buttonAllCustomerInterfaceClick;

    // Dasboard>> Support Ticket
    @FindBy (xpath = "(//*[text()='Support Ticket'])[1]")
    public WebElement dropDownSupportTicket;

    @FindBy (xpath = "(//*[@class='nice-select primary_select mb-15'])[1]")
    public WebElement dropDownCategory;

    @FindBy (xpath = "(//*[@class='nice-select primary_select mb-15'])[2]")
    public WebElement dropDownPriority;

    @FindBy (xpath = "(//*[@class='nice-select primary_select mb-15'])[3]")
    public WebElement dropDownStatus;

    @FindBy (xpath = "//div[1]/form/div/div[1]//ul/li[6]")
    public WebElement labelTechnical;

    @FindBy (xpath = "//div[1]/form/div/div[2]//ul/li[2]")
    public WebElement labelPriority;

    @FindBy (xpath = "//div[1]/form/div/div[3]//ul/li[2]")
    public WebElement labelStatus;

    @FindBy (xpath = "(//ul/li[5])[12]")
    public WebElement labelMyTicket;

    @FindBy (xpath = "//div[1]/form/div/div[1]//ul/li")
    public List<WebElement> dropDownCategoryList;

    @FindBy (xpath = "//div[1]/form/div/div[2]//ul/li")
    public List<WebElement> dropDownPriortiyList;

    @FindBy (xpath = "//div[1]/form/div/div[3]//ul/li")
    public List<WebElement> dropDownStatusList;

    @FindBy (id = "search_btn")
    public WebElement buttonSearch;

    @FindBy (xpath = "//*[@id='dataListTable']/thead/tr/th")
    public List<WebElement> dropDownTicketList;

    //Dashboard>> Profile image
    @FindBy(className = "user_avatar_div")
    public WebElement imageProfile;

    //Dashboard>>Profile image>>subTitle
    @FindBy(className = "profile_info_iner")
    public WebElement subMenuProfile;

    //Dashboard>>Profile image>>My Profile link
    @FindBy(xpath = "//*[text()='My Profile']")
    public WebElement linkMyProfile;

    //Dashboard>> Close successful login message
    @FindBy(xpath = "//*[@class='toast-close-button']")
    public WebElement iconCloseSuccessMessage;

    //My profile page>> Basic Info text
    @FindBy(xpath = "//*[text()='Basic Info']")
    public WebElement labelBasicInfo;

    //My profile page>> FirstName text
    @FindBy(xpath = "(//*[@class='primary_input_label'])[1]")
    public WebElement labelFirstNameText;

    //My profile page>> LastName text
    @FindBy(xpath = "(//*[@class='primary_input_label'])[2]")
    public WebElement labelLastNameText;

    //My profile page>> Email text
    @FindBy(xpath = "(//*[@class='primary_input_label'])[3]")
    public WebElement labelEmailText;

    //My profile page>> PhoneNumber text
    @FindBy(xpath = "(//*[@class='primary_input_label'])[4]")
    public WebElement labelPhoneNumberText;

    //My profile page>> Date Of Birth text
    @FindBy(xpath = "(//*[@class='primary_input_label'])[5]")
    public WebElement labelDateOfBirthText;

    //My profile page>> Avatar button
    @FindBy(xpath = "//*[@class='primary-btn small fix-gr-bg']")
    public WebElement buttonAvatar;

    //My profile page>> Update button
    @FindBy(xpath = "//*[@id='update_info']")
    public WebElement buttonUpdate;
    public void verifyVisible(WebElement element){
        element.isDisplayed();
    }

    public void verifyVisibleActive(WebElement element){
        element.isDisplayed();
        element.isEnabled();
    }

    //Admin-Profile>>firstname textbox
    @FindBy(xpath = "//*[@class='primary_input_field first_name']")
    public WebElement textBoxfirstName;

    //Admin-Profile>>Phone Number textbox
    @FindBy(xpath = "//*[@class='primary_input_field phone']")
    public WebElement textBoxPhoneNumber;

    //Admin-Profile>>succes Update Message
    @FindBy(xpath = "//*[@class='toast-message']")
    public WebElement labelSuccessMessage;

    //Admin-Profile>>Change Password Button
    @FindBy(xpath = "(//*[@class='nav-link'])[1]")
    public WebElement buttonChangePassword;

    //Admin-Profile>>Address Button
    @FindBy(xpath = "(//*[@class='nav-link'])[2]")
    public WebElement buttonAddress;

    //Admin-Profile>>Change password text
    @FindBy(xpath = "(//*[@class='mb-0 mr-30 mb_xs_15px mb_sm_20px'])[2]")
    public WebElement labelChangePassword;

    public void clickVerification(WebElement element1,WebElement element2){
        element1.click();
        ReusableMethods.wait(3);
        Assert.assertTrue(element2.isDisplayed());
    }

    //Admin-Profile>>Change password page
    @FindBy(xpath = "//*[@id='currentPassword']")
    public WebElement textBoxCurrentPassword;

    //Admin-Profile>>Change password page
    @FindBy(xpath = "//*[@id='newPass']")
    public WebElement textBoxNewPassword;

    //Admin-Profile>>Change password page
    @FindBy(xpath = "//*[@id='rePass']")
    public WebElement textBoxRePassword;

    //Admin-Profile>>Change password page
    @FindBy(xpath = "//*[@class='primary-btn semi_large2 fix-gr-bg change_password']")
    public WebElement buttonUpdateChangePassword;

    //Admin-Profile>>Address page
    @FindBy(xpath = "//*[@class='primary-btn radius_30px mr-10 fix-gr-bg add_new_address']")
    public WebElement buttonAddNewAddress;

    //Admin-Profile>>Address page
    @FindBy(xpath = "(//*[@id='address_table'])[1]")
    public WebElement tableAddressInformation;

    //Admin-Profile>>Address page
    @FindBy(xpath = "(//*[@class='primary-btn semi_large2 fix-gr-bg float-none'])[1]")
    public WebElement buttonSaveAddress;

    //Admin-Profile>>Address page
    @FindBy(xpath = "//*[@id='address_name']")
    public WebElement textBoxNameAddress;

    //Admin-Profile>>Address page
    @FindBy(xpath = "//*[@id='Email_Address1']")
    public WebElement textBoxEmailAddress;

    //Admin-Profile>>Address page
    @FindBy(xpath ="//*[@id='customer_phn']")
    public WebElement textBoxPhoneAddress;


    //Admin-Profile>>Address page
    @FindBy(xpath = "//*[@id='Address']")
    public WebElement textBoxAddress;

    //Admin-Profile>>Address page
    @FindBy(xpath = "(//*[@class='nice-select form-control primary_select'])[1]")
    public WebElement dropDownCountry;

    //Admin-Profile>>Address page
    @FindBy(xpath = "(//*[@class='nice-select form-control primary_select'])[2]")
    public WebElement dropDownState;

    //Admin-Profile>>Address page
    @FindBy(xpath = "(//*[@class='nice-select form-control primary_select'])[3]")
    public WebElement dropDownCity;

    //Admin-Profile>>Address page
    @FindBy(xpath ="//*[@id='postal_code']")
    public WebElement textBoxPostalCode;

    public void addAddress(){
        textBoxNameAddress.sendKeys("New");
        textBoxEmailAddress.sendKeys("ee@ee.cm");
        textBoxPhoneAddress.sendKeys("111111111111");
        textBoxAddress.sendKeys("Test");
        dropDownState.sendKeys("Alaska");
        dropDownCity.sendKeys("Albany");
        textBoxPostalCode.sendKeys("101000");
        buttonSaveAddress.click();
    }

    //Admin-Profile>>Address page
    @FindBy(xpath = "//*[text()='Something Went Wrong!']")
    public WebElement labelErrorMessage;

    //Admin-Profile>>Address page
    @FindBy(xpath = "(//*[@type='submit'])[2]")
    public WebElement buttonSave;

    //Admin-Profile>>Address page
    @FindBy(xpath = "(//*[text()='Select from options'])[2]")
    public WebElement subMenuSelectFromOptions;

    //=========================US 41 >> STAF ======================================

    @FindBy(xpath = "(//div[@class='nav_title'])[5]")
    public WebElement dorpDownHumanResource;
    @FindBy(xpath = "//a[text()='Staff']")
    public WebElement linkStaff;

    @FindBy(xpath = "//thead/tr/th")
    public List<WebElement> rowStaffListBasliklar;

    @FindBy(xpath = "//tbody/tr[1]/td[5]/label/div")
    public WebElement checkboxStatusStaff;
    @FindBy(xpath = "(//th[@class='sorting_1'])[1]")
    public WebElement ikonSayıStaff;
    @FindBy(xpath = "(//button[@class='btn btn-secondary dropdown-toggle'])[2]")
    public WebElement dropDownSelectStaff;
    @FindBy(xpath = "//a[text()='View']")
    public List<WebElement> linkViewStaff;

    @FindBy(xpath = "//a[text()='Edit']")
    public List<WebElement> linkEditStaff;
    @FindBy(xpath = "//a[text()='Delete']")
    public List<WebElement> linkDeleteStaff;
    
    @FindBy(xpath = "//input[@type='search']")
    public WebElement textBoxQuickSearchStaff;

     @FindBy(xpath = "//a[@href='https://qa.buysellcycle.com/hr/staffs/create']")
    public WebElement buttonAddNewStaff;

    @FindBy(xpath = "//*[@id='save_button_parent']")
    public WebElement buttonSaveParent;

    @FindBy(xpath = "//div[@tabindex='0'][.//li[@data-value='2-admin']]")
    public WebElement dropDownRoleStaff;
    @FindBy(xpath = "(//li[@class='option'])[2]")
    public WebElement textboxRoleStaff;

    @FindBy(xpath = "/html/body/div[2]/div/section/div/div/div[2]/div/form/div/div[2]/div/div/div/input")
    public WebElement textboxNiceSelect;

    @FindBy(xpath = "//div[@tabindex='0'][.//li[@data-value='1']]")
    public WebElement dropDownDepartmentStaff;
    @FindBy(xpath = "(//li[@class='option'])[5]")
    public WebElement textboxDepartmentStaff;

    @FindBy(xpath = "/html/body/div[2]/div/section/div/div/div[2]/div/form/div/div[3]/div/div/div/input")
    public WebElement textboxNiceSelect2;

    @FindBy(xpath = "//input[@name='email']")
    public WebElement textboxEmailStaff;

    @FindBy(xpath = "//input[@name='first_name']")
    public WebElement textboxFirstNameStaff;

    @FindBy(xpath = "//input[@minlength='8']")
    public WebElement textboxPasswordStaff;
      
    @FindBy(xpath = "//*[@id='date_of_birth']")
    public WebElement textboxBirthDateStaff;
    @FindBy(xpath = "//td[@class='active day']")
    public WebElement dropDownActiveDayStaff;

    @FindBy(xpath = "//input[@name='date_of_joining']")
    public WebElement textboxDateJoiningStaff;
    @FindBy(xpath = "//input[@name='leave_applicable_date']")
    public WebElement textboxDateApplicaStaff;

    @FindBy(xpath = "(//span[@class='text-danger'])[8]")
    public WebElement labelWarningTextStaff;

  
    //------US44-----
    @FindBy(xpath = "(//*[@id='dropdownMenu2'])[13]")
    public WebElement buttonconfirmedSelect;
    @FindBy(xpath = "(//tr[1]/td[1])[2]")
    public WebElement buttonconfirmedAction;
    @FindBy(xpath = "(//td[1])[1]")
    public WebElement buttonpendingAction;
    @FindBy(xpath = "//span[2]/div/button")
    public WebElement buttonpendingSelect;
    @FindBy(xpath = "(//*[text()='Details'])[13]")
    public WebElement dropDownconfirmedDetailsSelect;
    @FindBy(xpath = "(//*[@class='primary_input_label'])[1]")
    public WebElement labelConfirmedOrderConfirm;
    @FindBy(xpath = "//*[@href='https://qa.buysellcycle.com/ordermanage/sales-details/142']")
    public WebElement buttonNotificiationRelevantDetails;
    @FindBy(xpath = "//*[text()='Order Confirmation']")
    public WebElement labelNotificiationRelevantDetails;
    @FindBy(xpath = "//span[text()='Order Manage']")
    public WebElement linkOrderManage;
    @FindBy(xpath = "(//*[text()='Total Order'])[1]")
    public WebElement subLinkTotalOrder;
    @FindBy(xpath = "//*[@class='nav nav_list']")
    public WebElement totalOrderLists;
    @FindBy(xpath = "(//*[@class='nice-select primary_select mb-25'])[1]")
    public WebElement dropDownOrderConfirmationSelect;
    @FindBy(xpath = "//*[@data-value='1']")
    public WebElement subupdateRandomSelect;
    @FindBy(xpath = "(//*[text()='Confirm'])[2]")
    public WebElement buttonConfirmUpdate;
    @FindBy(xpath = "//*[@class='toast-message']")
    public WebElement labelupdateSuccesfully;
    @FindBy(xpath = "(//*[@class='dropdown-item'])[4]")
    public WebElement pendingconfirmedOrder;
    @FindBy(xpath = "(//*[@class='update_active_status'])[1]")
    public WebElement confirmedRegisterSelect;
    @FindBy(xpath = "//*[@placeholder='Quick Search']")
    public WebElement searchBoxPendingQuickSearch;
    @FindBy(xpath = "//*[text()='nobady@nobady.com']")
    public WebElement searchBoxQuickSearchResultText;
    @FindBy(xpath = "//*[text()='Confirmed Orders']")
    public WebElement buttonLinkconfirmedOrder;
    @FindBy(xpath = "(//tr[1]/td[1])[3]")
    public WebElement buttonCompletedAction;
    @FindBy(xpath = "//span[2]/div/div/a")
    public WebElement completedDetail;
    @FindBy(xpath = "(//*[@placeholder='Quick Search'])[3]")
    public WebElement searchBoxCompletedQuickSearch;
    @FindBy(xpath = "//*[text()='Completed Orders']")
    public WebElement buttonLinkcompletedOrder;
    @FindBy(xpath = "(//*[@placeholder='Quick Search'])[2]")
    public WebElement searchBoxConfirmedQuickSearch;
    @FindBy(xpath = "(//label/input)[4]")
    public WebElement serchBoxPayment;
    @FindBy(xpath = "//*[text()='Pending Payment Orders']")
    public WebElement buttonLinkpaymentOrder;
    @FindBy(xpath = "(//tr[1]/td[1])[4]")
    public WebElement buttonPaymentAction;
    @FindBy(xpath = "(//button[contains(text(),'Select')])[32]")
    public WebElement buttonPaymentSelect;
    @FindBy(xpath = "(//a[text()='Details'])[32]")
    public WebElement linkPaymentDetails;
    @FindBy(xpath = "//*[@id='5']")
    public WebElement buttonLinkRefusedCancelled;
    @FindBy(xpath = "(//tr[1]/td[1])[5]")
    public WebElement buttonRefusedCancelledAction;
    @FindBy(xpath = "(//button[contains(text(),'Select')])[46]")
    public WebElement buttonRefusedCancelledSelect;
    @FindBy(xpath = "(//a[text()='Details'])[46]")
    public WebElement linkRefusedCancelledDetails;
    @FindBy(xpath = "(//*[@class='primary_input_label red'])[2]")
    public WebElement orderCancelledText;
    @FindBy(xpath = "//tr/td[4]")
    public List<WebElement> adminTable;

    @FindBy(xpath = "(//*[@type='search'])[5]")
    public WebElement searchBoxQuickRefused;

    //**************US37*****************************************************
    @FindBy(xpath = "//span[.='Customer']")
    public WebElement dropDownCustomer;
    @FindBy(xpath = "//a[.='All Customer']")
    public WebElement linkAllCustomer;
    @FindBy(xpath = "//h3[.='All Customer']")
    public WebElement labelAllCustomer;
    @FindBy(xpath = "(//label[@class='switch_toggle'])[1]")
    public WebElement radioButtonIsActiveFirst;
    @FindBy(xpath = "//div[@class='toast-progress']")
    public WebElement popUpMessage;
    @FindBy(xpath = "//a[.='Active Customer']")
    public WebElement buttonActiveCustomer;
    @FindBy(xpath = "//a[.='Inactive customer']")
    public WebElement buttonInactiveCustomer;
    @FindBy(xpath = "//a[.='Create Customer']")
    public WebElement buttonCreateCustomer;
    @FindBy(xpath = "(//tbody)[2]/tr[1]/td[9]/div/button")
    public WebElement buttonSelect;
    @FindBy(xpath = "(//tbody)[3]/tr[1]/td[9]/div/button")
    public WebElement buttonSelectInActive;
    @FindBy(xpath = "(//tbody)[2]/tr[1]/td[9]/div/div/a[1]")
    public WebElement buttonDetails;
    @FindBy(xpath = "(//tbody)[3]/tr[1]/td[9]/div/div/a[1]")
    public WebElement buttonDetailsInactive;
    @FindBy(xpath = "(//tbody)[2]/tr[1]/td[9]/div/div/a[2]")
    public WebElement buttonEdit;
    @FindBy(xpath = "(//tbody)[3]/tr[1]/td[9]/div/div/a[2]")
    public WebElement buttonEditInactive;
    @FindBy(xpath = "(//tbody)[2]/tr[1]/td[9]/div/div/a[3]")
    public WebElement buttonDelete;
    @FindBy(xpath = "(//tbody)[3]/tr[1]/td[9]/div/div/a[3]")
    public WebElement buttonDeleteInactive;
    @FindBy(xpath = "//a[@id='delete_link']")
    public WebElement buttonDeletePopUp;
    @FindBy(xpath = "//input[@name='last_name']")
    public WebElement textBoxLastnameEdit;
    @FindBy(xpath = "//button[@id='save_button_parent']")
    public WebElement buttonUpdateEdit;
    @FindBy(xpath = "//div[@class='toast-message']")
    public WebElement popUpMessageUpdate;
    @FindBy(xpath = "//h3[.='Customer Profile']")
    public WebElement labelCustomerProfile;
    @FindBy(xpath = "//h3[.='Order Summary']")
    public WebElement labelOrderSummary;
    @FindBy(xpath = "//h3[.='Wallet Summary']")
    public WebElement labelWalletSummary;
    @FindBy(xpath = "//input[@name='first_name']")
    public WebElement textBoxFirstname;
    @FindBy(xpath = "//input[@name='email']")
    public WebElement textBoxEmail;
    @FindBy(xpath = "//input[@name='password']")
    public WebElement textBoxPassword;
    @FindBy(xpath = "//input[@name='password_confirmation']")
    public WebElement textBoxPasswordConfirmation;
    @FindBy(xpath = "//button[@id='save_button_parent']")
    public WebElement buttonCreateCstmr;

    @FindBy(xpath = "(//*[text()='Support Ticket'])[2]")
    public WebElement subMenuSupportTicket;

    @FindBy(xpath = "(//*[@class='primary-btn small fix-gr-bg'])[1]")
    public WebElement buttonAddNewSupport;

    @FindBy(xpath = "//*[@id='subject']")
    public WebElement dropDownSubjectSupport;

    @FindBy(xpath = "(//*[@class='nice-select primary_select mb-15'])[1]")
    public WebElement dropDownCategoryListSupport;

    @FindBy(xpath = "(//*[@class='nice-select primary_select mb-15'])[2]")
    public WebElement dropDownPrioritySupport;

    @FindBy(xpath = "(//*[@class='nice-select primary_select mb-15'])[4]")
    public WebElement dropDownStatusSupport;

    @FindBy(xpath = "//*[@class='note-editable card-block']")
    public WebElement textBoxDescriptionSupport;

    @FindBy(xpath = "//*[@class='primary-btn semi_large2 fix-gr-bg']")
    public WebElement buttonCreateTicketSupport;

    @FindBy(xpath = "//*[@id='add_new_category']")
    public WebElement linkAddNewSupport;

    @FindBy(xpath = "(//*[@class='nice-select primary_select mb-15'])[1]")
    public WebElement dropdownCategorySupportTicket;

    @FindBy(xpath = "(//*[@class='nice-select primary_select mb-15'])[2]")
    public WebElement dropdownPrioritySupportTicket;

    @FindBy(xpath = "(//*[@class='nice-select primary_select mb-15'])[3]")
    public WebElement dropdownStatusSupportTicket;

    @FindBy(xpath = "//*[@id='search_btn']")
    public WebElement buttonSearchSupportTicket;

    @FindBy(xpath = "//tr//td[3]")
    public List<WebElement> tableTechnicalRow;


    public void tablodaHucreBulma(String str){
        List<String> ListStr=ReusableMethods.strListeOlustur(tableTechnicalRow);
        int count=0;
        for (String each:ListStr) {
            if (each.contains(str)){
                count++;
                Assert.assertTrue(count>0);
            }
        }
    }

    @FindBy(xpath = "(//*[@class='sorting_1'])[1]")
    public WebElement iconActionSupportTicket;

    @FindBy(xpath = "(//*[@class='btn btn-secondary dropdown-toggle'])[2]")
    public WebElement buttonSelectSupportTicket;

    @FindBy(xpath = "(//*[@class='niceSelect w-100 bb form-control'])[2]")
    public WebElement labelUnassignedText;

    @FindBy(xpath = "(//*[@class='dropdown-item'])[3]")
    public WebElement linkShowSupportTicket;

    @FindBy(xpath = "(//*[@class='dropdown-item'])[4]")
    public WebElement linkEditSupportTicket;

    @FindBy(xpath = "(//*[@class='mb-3'])[1]")
    public WebElement labelTicketInfo;

    @FindBy(xpath = "//*[@class='mb-0 mr-30']")
    public WebElement labelUpdateTicket;

    @FindBy(xpath = "(//*[@class='option'])[5]")
    public WebElement optionTechnicalSupportTicket;

    @FindBy(xpath = "(//*[@class='option'])[7]")
    public WebElement optionHighSupportTicket;

    @FindBy(xpath = "(//*[text()='Completed '])[2]")
    public WebElement optionCompletedSupportTicket;

    @FindBy(xpath = "(//td[3])[1]")
    public WebElement labelOrderIDPending;

    public void confirmedVerify(){
        String numberOrder=labelOrderIDPending.getText();

    }
}
