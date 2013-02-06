require "spec_helper"

puts "Hello, world!"

feature %q{
  As a user
  I want to be able to create
  New Meetings
} do

  background do
    visit "/"
  end

  scenario "I should be able to create meetings", :js => true do
    page.should have_content "Create Meeting"
    click_link "Create Meeting"
    fill_in "meeting[name]", :with => 'Team up and drink vodka'
    fill_in "meeting[place]", :with => 'Vodka Bar'
    select "#{Date.current.year + 1}", :form => "meeting[date(1i)]"
    click_button "Save"
    page.should have_content "Meeting was successfully created."
  end

  scenario "I should be able to see the list of meetings", :js => true do
    click_link "Create Meeting"
    fill_in "meeting[name]", :with => 'Team up and drink vodka'
    fill_in "meeting[place]", :with => 'Vodka Bar'
    select "#{Date.current.year + 1}", :form => "meeting[date(1i)]"
    click_button "Save"
    visit "/"
    click_link "Create Meeting"
    fill_in "meeting[name]", :with => 'Play monopoly in Richmond'
    fill_in "meeting[place]", :with => 'Richmond outer'
    select "#{Date.current.year + 1}", :form => "meeting[date(1i)]"
    click_button "Save"
    visit "/"
    page.should have_content "Team up and drink vodka"
    page.should have_content "Play monopoly in Richmond"
  end

end


feature %q{
  As a user
  I want to be able to attend meetings
} do

  background do
    visit "/"
  end

  scenario "Users should be able to attend meetings", :js => true do

    page.should have_content "Attend"
    click_link "Attend"
    fill_in "user[name]", :with => 'Stewie Yee Wee'
    click_button "Attend"
    page.should have_content "Stewie Yee Wee is attending"

  end

end
