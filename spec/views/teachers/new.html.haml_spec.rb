require 'rails_helper'

RSpec.describe "teachers/new", type: :view do
  before(:each) do
    assign(:teacher, Teacher.new(
      :email => "MyString",
      :password => "",
      :name => "MyString"
    ))
  end

  it "renders new teacher form" do
    render

    assert_select "form[action=?][method=?]", teachers_path, "post" do

      assert_select "input#teacher_email[name=?]", "teacher[email]"

      assert_select "input#teacher_password[name=?]", "teacher[password]"

      assert_select "input#teacher_name[name=?]", "teacher[name]"
    end
  end
end
