require 'spec_helper'

describe "meetings/new" do
  before(:each) do
    assign(:meeting, stub_model(Meeting,
      :name => "MyString",
      :place => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new meeting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meetings_path, :method => "post" do
      assert_select "input#meeting_name", :name => "meeting[name]"
      assert_select "input#meeting_place", :name => "meeting[place]"
      assert_select "input#meeting_user_id", :name => "meeting[user_id]"
    end
  end
end
