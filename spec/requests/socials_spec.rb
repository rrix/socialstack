require 'spec_helper'

describe "Socials" do
  describe "As a guest ISBAT social" do

    before do
      visit root_path
    end

    it 'generates a social+ cloud' do
      page.should have_content "Here's your Cloud name, time for the IPO!"
      page.should have_css     "h1"
    end

  end
end
