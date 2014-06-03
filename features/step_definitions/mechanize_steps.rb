Given /click the button '(.*)'$/ do |name|
  click_button(name)
end

Given /click the link '(.*)'$/ do |name|
  click_link(name)
end

Given /select (\S*) from (\S*)/ do |value, field|
  select value, from: field
end

Given /^I fill in (\S*) with: (.*)$/ do |field, value|
  fill_in field, with: value
end

Given /^accept the confirm$/ do
  page.driver.browser.switch_to.alert.accept
end