require 'page-object'
require 'page-object/page_factory'


World(PageObject)
World(PageObject::PageFactory)


Before do
  @browser = Selenium::WebDriver.for :chrome
  browser.manage.window.maximize
end

After do
  @browser.quit
end