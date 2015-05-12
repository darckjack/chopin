require 'rails_helper'

RSpec.describe "teachers/show", type: :view do
  before(:each) do
    @teacher = assign(:teacher, Teacher.create!(
      :email => "Email",
      :password => "",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
  end
end
