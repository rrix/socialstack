class CloudController < ApplicationController

  def show
    @the_cloud = Cloud.find params[:id]
  end

end
