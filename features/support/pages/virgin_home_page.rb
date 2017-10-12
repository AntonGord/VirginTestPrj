require_relative '../sections/search_panel'

class VirginHomePage

  include PageObject
  page_url 'https://www.virginholidays.co.uk/'

  page_section :search_panel, SearchPanel, xpath: '//*[@id="search-panel-container"]//form'

  element :find_holidays_button, xpath: '//div[@class="col-md-2 visible-md visible-lg submit-container"]//button[contains(text(),"Find Holidays")]'

  def input_destination(city, qualify)
    search_panel.destination_control.select_item(city, qualify)
  end

  def choose_flying_from(value)
    search_panel.flying_from_element.find_elements(:css, 'option').find{|o| o.text == value}.click
  end

  def choose_date(value)
    search_panel.calendar.choose_date(value)
  end

  def choose_nights_count(value)
    search_panel.nights_to_stay_form_element.find_elements(:css, 'option').find{|o| o.text == value}.click
  end

  def choose_adults_count(value)
    search_panel.adults_form_element.find_elements(:css, 'option').find{|o| o.text == value}.click
  end

  def choose_children_count(value)
    search_panel.children_form_element.find_elements(:css, 'option').find{|o| o.text == value}.click
  end

  def click_find_holidays_button
    find_holidays_button_element.click()
  end

end