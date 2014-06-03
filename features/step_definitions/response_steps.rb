Given /^I should receive a (\d+) response code$/ do |code|
  expect(page.status_code).to eq(code.to_i)
end

Given /^the path should be (\S*)$/ do |path|
  expect(current_path).to eq(path)
end