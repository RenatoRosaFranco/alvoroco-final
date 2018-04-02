require 'rails_helper'

RSpec.describe "subscriptions/edit", type: :view do
  before(:each) do
    @subscription = assign(:subscription, Subscription.create!(
      :name => "MyString",
      :artistic_name => "MyString",
      :age => "MyString",
      :cpf => "MyString",
      :rg => "MyString",
      :address => "MyString",
      :city => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :schooling => "MyString",
      :experienced => false,
      :experience_description => "MyString",
      :signature => "MyString"
    ))
  end

  it "renders the edit subscription form" do
    render

    assert_select "form[action=?][method=?]", subscription_path(@subscription), "post" do

      assert_select "input[name=?]", "subscription[name]"

      assert_select "input[name=?]", "subscription[artistic_name]"

      assert_select "input[name=?]", "subscription[age]"

      assert_select "input[name=?]", "subscription[cpf]"

      assert_select "input[name=?]", "subscription[rg]"

      assert_select "input[name=?]", "subscription[address]"

      assert_select "input[name=?]", "subscription[city]"

      assert_select "input[name=?]", "subscription[phone]"

      assert_select "input[name=?]", "subscription[email]"

      assert_select "input[name=?]", "subscription[schooling]"

      assert_select "input[name=?]", "subscription[experienced]"

      assert_select "input[name=?]", "subscription[experience_description]"

      assert_select "input[name=?]", "subscription[signature]"
    end
  end
end
