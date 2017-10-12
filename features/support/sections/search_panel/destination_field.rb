class DestinationField

  include PageObject

  element :input, xpath: './/input'
  elements :items, xpath: './/ul/li//a'


  def select_item(enter_value, select_item)

    input_element.clear()
    input_element.send_keys(enter_value)
    wait_until(10){ items_elements.any?{|it| it.visible?} }
    items_elements.find{|el| el.text.include?select_item}.click

  end

end