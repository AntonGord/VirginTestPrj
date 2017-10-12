class VirginSearchResultsPage

  include PageObject

  element :search_result_table, xpath: '//*[@class="row search-result-list"]'
  element :total_hotel_title, class: 'hotel-count'
  elements :hotel_titles, class: 'hotel-name'

  def page_loaded
    wait_until(80) {search_result_table_element.visible?}
  end

  private :total_hotels_count_in_title
  def total_hotels_count_in_title
    total_hotel_title_element.text.match(/\d+/).to_s.to_i
  end

  def load_all
    max_scrolls = 50

    max_scrolls.times do
      break if hotel_titles_elements.count >= total_hotels_count_in_title
      @browser.execute_script('window.scrollTo(0, document.body.scrollHeight);')
      sleep 0.1
    end

  end

  def get_hotels_names
    hotel_titles_elements.map{|title| title.text }.join("\n")
  end

end