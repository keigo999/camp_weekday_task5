module FortunetellingsHelper
  require "date"

  def your_birthday?
    today = Date.today
    /(^\d{4})-(\d{2})-(\d{2})/ =~ today.to_s
    if @month == $2 && @day == $3
      @happy_birthday = true
    end
  end
end
