class UsersController < ApplicationController
FB_APP_ID = 594183100646923
FB_SECRET = "49c1d9523000f644f5b809ad708c16db"

  respond_to :html, :json

  def welcome
  end

  def index
    @access_token = FbGraph::Application.new(FB_APP_ID, :secret => FB_SECRET).get_access_token
    @user = FbGraph::User.fetch("rolen.tiberius", :access_token => @access_token)
  end
end
