class Home2Controller < ApplicationController
  def new
  	@user = User.new
  end
end
