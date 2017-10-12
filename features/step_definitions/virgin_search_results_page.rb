Then(/^Put results in report$/) do
  on(VirginSearchResultsPage).load_all
  puts on(VirginSearchResultsPage).get_hotels_names
end