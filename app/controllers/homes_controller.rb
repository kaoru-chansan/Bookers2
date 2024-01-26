class HomesController < ApplicationController
  def top
  end

  def about
    flash.now[:notice] = "Signed out successfully."
  end

end
