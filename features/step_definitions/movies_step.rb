Given(/^the following (.+) records exist$/) do |factory, table|
  table.hashes.each do |hash|
    FactoryGirl::create(factory, hash)
  end
end

When(/^I visit movies home page$/) do
  visit movies_path
end

Then(/^I should see any change in the interface$/) do
  binding.pry
  percentage = GreenOnion.skin_visual_and_percentage(movies_path)
  expect(percentage.to_f).to eq(0)
end