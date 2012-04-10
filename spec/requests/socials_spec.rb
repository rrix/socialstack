require 'spec_helper'

describe "Socials" do
  describe "As a guest ISBAT cloud" do

    before do
      visit root_path
    end

    context "new user" do

      it 'generates a social+ cloud' do
        page.should have_content "Here's your Cloud name, time for the IPO!"
        page.should have_css     "h1"
      end

    end

    context "returning cloud+'er" do

      before do
        @ccloud = Cloud.create_new_cloud
        visit cloud_path @ccloud
      end

      it 'users can find old cloud++s again.' do
        page.should have_content @ccloud.cloud_name
      end

    end

  end
end
