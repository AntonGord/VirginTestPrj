Given(/^Open Virgin Holidays home page$/) do
  visit VirginHomePage
end

When(/^Try to search a holiday with specific data$/) do
  on(VirginHomePage).input_destination('New','New York')
  on(VirginHomePage).choose_flying_from('Manchester International')
  on(VirginHomePage).choose_date(29)
  on(VirginHomePage).choose_nights_count('4 nights')
  on(VirginHomePage).choose_adults_count('3')
  on(VirginHomePage).choose_children_count('0')
  on(VirginHomePage).click_find_holidays_button
  on(VirginSearchResultsPage).page_loaded
end