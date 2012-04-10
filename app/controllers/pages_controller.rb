class PagesController < ApplicationController

  def index
    @the_cloud = Cloud.new_cloud # it's that easy!
    if @found_cloud = Cloud.where(cloud_name: @the_cloud.cloud_name).first
      redirect_to cloud_url @found_cloud.id
    else
      @the_cloud.save
      redirect_to cloud_url @the_cloud.id
    end
  end

end
