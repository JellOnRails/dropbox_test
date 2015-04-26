
# ==== WHEN ====

When /^I create a folder$/ do
  @app.home_page.create_folder
end

# ==== THEN ====

Then /^I should see new folder$/ do
  expect( @app.home_page ).to have_file_or_folder
end