class FortunetellingsController < ApplicationController
  include FortunetellingsHelper
  
  def show
    @birthday = params[:birthday]
    @year = @birthday[0..3]
    @month = @birthday[4..5]
    @day = @birthday[6..8]
  end
end
