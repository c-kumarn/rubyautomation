class LoginPage
  attr_accessor :btnSrch,:browser,:Rslt,:Srch,:URL,:Txt,:searchTxt

  def initialize(browser)
    @browser = browser
    #@loginTab    = @browser.a(:text => "Login")
    @searchTxt = @browser.text_field(:id => "lst-ib")
    #@txtPassword = @browser.text_field(:id => "password")
    @btnSrch = @browser.button(:xpath => "//*/div[2]/div[3]/center/input[1]")
    @URL = @browser.h3(:xpath => "//*/div[1]/div/div/div/div/div[1]/a/h3")
    @Txt = @browser.text_field(:id => "twotabsearchtextbox")
    @Srch = @browser.button(:xpath => "//*/form/div[2]/div/input")
    @Rslt = @browser.h2(:xpath => "//*/div/div/div/div[2]/div[1]/div[1]/a/h2")
    @addCart = @browser.span(:xpath => "//*/span")
  end

  def visit()
    @browser.window.maximize
    @browser.goto "https://www.google.com/webhp?complete=0"

  end

  # def clickLoginTab()
  #  @loginTab.click
  #end

  def enterTextG(txt)
    @searchTxt.set txt
  end

  #def enterPassword(password)
  # @txtPassword.set password
  # @txtPassword.set password
  #end

  def clickSearchButton
    @btnSrch.click
  end

  def verifyHomePageHeader()
    @browser.element(:text => "amazon in").wait_until_present
  end

  def clickonURL
    #@browser.goto "https://www.amazon.in/"
    @URL.click


  end

  #def verifywebSite()
   # @browser.element(:text => "Online Shoping site").wait_until_present
  #end

  def enterTxt(txt)
    @Txt.set txt
  end

  def clickSearch
    @Srch.click
  end

  def openResult
    @Rslt.click
    sleep(8)
    #@browser.refresh
    puts @browser.title


  end

  def addToCart
    @addCart.click

  end




end