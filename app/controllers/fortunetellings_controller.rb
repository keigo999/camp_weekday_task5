class FortunetellingsController < ApplicationController
  include FortunetellingsHelper

  def show
    @birthday = params[:birthday]
    @year = @birthday[0..3]
    @month = @birthday[4..5]
    @day = @birthday[6..8]
    #今日が誕生日か確認
    your_birthday?
    constellation(@month, @day)

  end

end
