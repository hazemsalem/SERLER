class WelcomeController < ApplicationController
  
  def index
    @the_user = current_user
  end
  
end
