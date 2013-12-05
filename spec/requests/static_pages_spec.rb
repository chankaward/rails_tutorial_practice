require 'spec_helper'

describe "Static Page" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content ('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title("| Home") }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title("Help")) }
  end

  describe "Abous us page" do
    before { visit about_path }

    it { should have_content("About Us") }
    it { should have_title(full_title("About Us")) }
  end

  describe "Contact us page" do
    before { visit contact_path }

    it { should have_title(full_title("Contact Us")) }
    it { should have_content("Contact Us") }
  end
end
