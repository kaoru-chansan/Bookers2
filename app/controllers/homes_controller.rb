class HomesController < ApplicationController
  def top
    flash.now[:notice] = "Welcome! You have signed up successfully."
  end

  def about
    flash.now[:notice] = "Signed out successfully."
  end

end
