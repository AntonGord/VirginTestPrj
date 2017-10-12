class Calendar

  include PageObject

  elements :date_values, xpath: '//*[@style="display: block;"]//*[@class="calendar"]//button[not(contains(@disabled,"disabled"))]'

  def choose_date(date)
    self.click
    date_values_elements.find{|el| el.text == date.to_s}.click()
  end

end