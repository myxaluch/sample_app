require 'rails_helper'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign up')) }

  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
  end
end
