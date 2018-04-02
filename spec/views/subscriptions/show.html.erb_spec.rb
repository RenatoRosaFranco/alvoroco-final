require 'rails_helper'

RSpec.describe "subscriptions/show", type: :view do
  before(:each) do
    @subscription = assign(:subscription, Subscription.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Artistic Name/)
    expect(rendered).to match(/Age/)
    expect(rendered).to match(/Cpf/)
    expect(rendered).to match(/Rg/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Schooling/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Experience Description/)
    expect(rendered).to match(/Signature/)
  end
end
