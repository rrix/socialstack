class PagesController < ApplicationController

  def index
    @the_cloud = Cloud.create_new_cloud # it's that easy!
  end

end
