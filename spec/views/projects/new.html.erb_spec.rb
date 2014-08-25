require 'rails_helper'

RSpec.describe "projects/new", :type => :view do
  before(:each) do
    assign(:project, Project.new(
      :name => "MyString",
      :description => "MyText",
      :verified => false,
      :status => false,
      :price => 1.5,
      :user => nil
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "textarea#project_description[name=?]", "project[description]"

      assert_select "input#project_verified[name=?]", "project[verified]"

      assert_select "input#project_status[name=?]", "project[status]"

      assert_select "input#project_price[name=?]", "project[price]"

      assert_select "input#project_user_id[name=?]", "project[user_id]"
    end
  end
end
