require 'rails_helper'

RSpec.describe "projects/show", :type => :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :name => "Name",
      :description => "MyText",
      :verified => false,
      :status => false,
      :price => 1.5,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
  end
end
