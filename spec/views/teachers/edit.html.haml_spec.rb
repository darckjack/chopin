require 'rails_helper'

RSpec.describe "teachers/edit", type: :view do
  before(:each) do
    @teacher = assign(:teacher, Teacher.create!(
      :email => "MyString",
      :password => "",
      :name => "MyString"
    ))
  end

  it "renders the edit teacher form" do
    render

    assert_select "form[action=?][method=?]", teacher_path(@teacher), "post" do

      assert_select "input#teacher_email[name=?]", "teacher[email]"

      assert_select "input#teacher_password[name=?]", "teacher[password]"

      assert_select "input#teacher_name[name=?]", "teacher[name]"
    end
  end
end
