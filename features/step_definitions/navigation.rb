
# ==== WHEN ====

When /^I click on (\w+) button$/ do | button |
  @app.home_page.send( button ).click
end

# ==== THEN ====

Then /^I should see (\w+) page$/ do | page |
  expect( @app.send( page ) ).to be_displayed
end