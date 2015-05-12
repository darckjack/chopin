require 'rails_helper'

RSpec.describe "teachers/index", type: :view do
  before(:each) do
    assign(:teachers, [
      Teacher.create!(
        :email => "Email",
        :password => "",
        :name => "Name"
      ),
      Teacher.create!(
        :email => "Email",
        :password => "",
        :name => "Name"
      )
    ])
  end

  it "renders a list of teachers" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
