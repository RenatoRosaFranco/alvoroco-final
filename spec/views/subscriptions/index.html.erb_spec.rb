require 'rails_helper'

RSpec.describe "subscriptions/index", type: :view do
  before(:each) do
    assign(:subscriptions, [
      Subscription.create!(
        :name => "Name",
        :artistic_name => "Artistic Name",
        :age => "Age",
        :cpf => "Cpf",
        :rg => "Rg",
        :address => "Address",
        :city => "City",
        :phone => "Phone",
        :email => "Email",
        :schooling => "Schooling",
        :experienced => false,
        :experience_description => "Experience Description",
        :signature => "Signature"
      ),
      Subscription.create!(
        :name => "Name",
        :artistic_name => "Artistic Name",
        :age => "Age",
        :cpf => "Cpf",
        :rg => "Rg",
        :address => "Address",
        :city => "City",
        :phone => "Phone",
        :email => "Email",
        :schooling => "Schooling",
        :experienced => false,
        :experience_description => "Experience Description",
        :signature => "Signature"
      )
    ])
  end

  it "renders a list of subscriptions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Artistic Name".to_s, :count => 2
    assert_select "tr>td", :text => "Age".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Rg".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Schooling".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Experience Description".to_s, :count => 2
    assert_select "tr>td", :text => "Signature".to_s, :count => 2
  end
end
