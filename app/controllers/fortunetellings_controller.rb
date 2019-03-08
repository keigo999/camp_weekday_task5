class FortunetellingsController < ApplicationController
  include FortunetellingsHelper

  def show
    @birthday = params[:birthday]
    @year = @birthday[0..3]
    @month = @birthday[4..5]
    @day = @birthday[6..7]
    #今日が誕生日か確認
    your_birthday?
    #星座を確認
    constellation(@month, @day)
    #運勢をランダムに表示
    @fortune = %w(大吉 中吉 吉 小吉 凶 大凶).shuffle[1]
  end
end
