require_relative 'search_panel/destination_field'
require_relative 'search_panel/calendar'

class SearchPanel

  include PageObject

  page_section :destination_control, DestinationField, xpath: '//*[contains(@class, "typeahead-wrapper")]'
  page_section :calendar, Calendar, id: 'checkin-date'

  element :flying_from, id: 'id'
  element :nights_to_stay_form, id: 'durationPick'
  element :adults_form, id: 'room_1_adults'
  element :children_form, id:'room_1_children'

end