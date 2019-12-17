#Application Page objects and methods

class BASE_PAGE
  include PageObject

  #Page Objects
  text_field(:user_name,:name => 'Email')
  text_field(:password,:name => 'Password')
  button(:login_btn,:class => 'btn green uppercase')
  link(:operationsLink, :text => 'OPERATIONS')
  image(:load,xpath: "//div[@class='spinner']/img[@style='display:none;']")
  #Methods
  def enterUserName(value)
    HELPER.enterValue(user_name_element,value,'User Name')
  end
  def enterPassword(value)
    HELPER.enterValue(password_element,value)
  end
  def clickOnLogin()
    HELPER.click(login_btn_element,'Login')
  end

  def clickOnLink()
    HELPER.click(operationsLink_element,'Operations')
  end

  def waitForPageLoad
    loading.wait_until_present(timeout:30)
  end
  #Page Objects
  text_field(:prodcut_name,:name => 'txtProductName')
  text_field(:service_name,:name => 'txtServiceName')
  text_area(:enviornments,:name => 'txtEnvironments')
  text_area(:pr_contact,:name => 'txtPrimaryContact')
  text_area(:sec_contact,:name => 'txtSecondaryContacts')
  text_area(:none_contact,:name => 'txtNonEmergencyContacts')
  def enterProdcutName(value)
    HELPER.enterValue(prodcut_name_element,value,'Product Name')
  end
  def enterServiceName(value)
    HELPER.enterValue(service_name_element,value,'Service Name')
  end
  def enterEnviornmentsName(value)
    HELPER.enterValue(enviornments_element,value,'Env Name')
  end
  def enterprName(value)
    HELPER.enterValue(pr_contact_element,value,'Primary Contact')
  end
  def enterscName(value)
    HELPER.enterValue(sec_contact_element,value,'Secondary Name')
  end
  def enternoneName(value)
    HELPER.enterValue(none_contact_element,value,'Secondary Name')
  end

  # BASE_PAGE.new(@browser).HELPER.enterValue(prodcut_name_element,value,'Product Name')
  # BASE_PAGE.new(@browser).HELPER.enterValue(service_name_element,value,'Service Name')
  # BASE_PAGE.new(@browser).HELPER.enterValue(enviornments_element,value,'Env Name')
  # BASE_PAGE.new(@browser).HELPER.enterValue(pr_contact_element,value,'Primary Name')
  # BASE_PAGE.new(@browser).HELPER.enterValue(sec_contact_element,value,'Secondary Name')
  #Page Objects
  button(:save_btn_element,:class => 'btn btn-primary btn-sm')
  def clickonSave()
    HELPER.normalClick(save_btn_element,'Save')
  end

  ####  This is validate logout screen - adding favorities
  #link(:usernamelink, :class => 'link-toggle')
  li(:usernamelink, xpath: "//li[@id='loginpartial']")
  def clickonuserlink()
    HELPER.normalClick(usernamelink_element,'Click on User link')
  end

  link(:addpagefavlink, :xpath => "//li[@id='loginpartial']//a[.='Add Page To Favorites']")
  def clickonfavsavelink()
    HELPER.click(addpagefavlink_element,'Add page to favorites')
  end

  def clickOnMenuLinkItem(menu_item_name)
    ele = @browser.link(:xpath => "//li[@id='loginpartial']//a[.='#{menu_item_name}']")
    HELPER.click(ele,menu_item_name)
  end

  button(:favsavebutton, xpath: "//div[@class='modal-dialog']//button[.='Save']")
  def clickonfavbutton()
    HELPER.normalClick(favsavebutton_element,'favorites Saved')
  end


  #Page Objects for Operations  Maintenance  Schedule New
  text_field(:schedulenewTitle,:name => 'txtTitle')
  text_field(:schedulenewWO,:name => 'txtWorkOrder')
  select_list(:schedulenewURL,:name => 'ddURL')
  select_list(:scheduleneweng,:name => 'ddEngineer')
  text_area(:schedulenewdesc,:name => 'txtDescription')

  def enterProdcutName(value)
    HELPER.enterValue(prodcut_name_element,value,'Product Name')
  end
  def enterServiceName(value)
    HELPER.enterValue(service_name_element,value,'Service Name')
  end
  def enterEnviornmentsName(value)
    HELPER.enterValue(enviornments_element,value,'Env Name')
  end
  def enterprName(value)
    HELPER.enterValue(pr_contact_element,value,'Primary Contact')
  end

  def entersopsmaintschedulenewTitle(value)
    HELPER.enterValue(schedulenewTitle_element,value,'Product Name')
  end

  def entersopsmaintschedulenewWO(value)
    HELPER.enterValue(schedulenewWO_element,value,'Product Name')
  end

  def entersopsmaintschedulenewURL(value)
    HELPER.select_value(schedulenewURL_element,value,'Product Name')
  end

  def entersopsmaintscheduleneweng(value)
    HELPER.select_value(scheduleneweng_element,value,'Product Name')
  end

  def entersopsmaintschedulenewdesc(value)
    HELPER.enterValue(schedulenewdesc_element,value,'Product Name')
  end

  button(:schedulenewSave,:class => 'btn btn-primary btn-sm')
  def clickschedulenewSave()
    HELPER.normalClick(schedulenewSave_element,'Save')
  end

end