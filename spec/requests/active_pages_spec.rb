require 'spec_helper'

describe "Active pages" do

  subject { page }

  describe "profile page" do
    let(:active) { FactoryGirl.create(:active) }
    before { visit active_path(active) }

    it { should have_content(active.name) }
    it { should have_title(active.name) }
  end
  describe "signup page" do
    before { visit new_active_registration_path }
    it { should have_content('Sign up') }
  end

  describe "authorization" do
    describe "for non-signed-in-actives" do
      describe "visiting the rushee index" do
        before { visit rushees_path }
        it { should have_title('Sign in') }
      end
    end
  end



end