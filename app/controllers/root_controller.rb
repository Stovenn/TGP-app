class RootController < ApplicationController
  def index
  	@gossips = Gossip.all
  	@first_name = params[:first_name]
  end
end
