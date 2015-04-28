
# ==== WHEN ====

When /^I create folder$/ do
  @app.home_page.create_folder
end

When /^I go to (\w+)$/ do | page |
  @app.send( page ).load
end

# ==== THEN ====

Then /^I should see new folder$/ do
  expect( @app.home_page ).to have_file_or_folder
end

Then /^I should see added folder event$/ do
  @app.events_page.wait_for_event_list
  expect( @app.events_page.event_list.first ).to have_text 'You added the folder'
end