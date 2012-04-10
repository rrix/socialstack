class PagesController < ApplicationController

  def index
    @the_cloud = Cloud.create_new_cloud # it's that easy!
    redirect_to @the_cloud
  end

end
