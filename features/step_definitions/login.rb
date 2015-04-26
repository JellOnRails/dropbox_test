
# ==== WHEN ====

When /^I login as (\w+)$/ do | user |
  @app.login_page.load
  @app.login_page.sign_in_as user
end

# ==== THEN ====

Then /^I should be logged in$/ do
  expect( @app.home_page ).to be_displayed
end