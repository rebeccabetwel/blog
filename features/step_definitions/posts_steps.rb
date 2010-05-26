Given /^I am logged in as an user$/ do
  User.create(:username => "Wilbert", :email => "wilbert@mail.com", :password => "reiousse", :password_confirmation => "reiousse")

  visit "/login"
  fill_in :login, :with => "Wilbert"
  fill_in :password, :with => "reiousse"
  click_button "Log in"
end


Given /^I have posts titled (.*) with (.*)$/ do |titles, content|
  titles.split(",").each do |title|
    Post.create(:title => title, :content => content)
  end
end


Then /^I should have ([0-9]+) posts$/ do |count|
	Post.count.should == count.to_i
end

