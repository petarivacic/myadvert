require 'rails_helper'

RSpec.describe "projects/index", :type => :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :name => "Name",
        :description => "MyText",
        :verified => false,
        :status => false,
        :price => 1.5,
        :user => nil
      ),
      Project.create!(
        :name => "Name",
        :description => "MyText",
        :verified => false,
        :status => false,
        :price => 1.5,
        :user => nil
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
