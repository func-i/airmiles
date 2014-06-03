Given /^there should be a table with (\d+) rows?$/ do |num_rows|
  page.all('table tbody tr').count.should eql(num_rows.to_i)
end

Given(/^the page should have content (?:'|")(.*)(?:'|")$/) do |content|
  expect(page.has_content?(content.strip)).to eq(true)
end

Given /^the page should have the (\S*) '(.*)'$/ do |type, finder|
  expect(page).to send("have_#{type}", finder)
end

Given /^the page should not have the (\S*) '(.*)'$/ do |type, finder|
  expect(page).to send("have_no_#{type}", finder)
end

Given /^the page should have the error message$/ do |message|
  expect(page.has_content?(message)).to be_true
end