module FortunetellingsHelper
  require "date"

  def your_birthday?
    today = Date.today
    /(^\d{4})-(\d{2})-(\d{2})/ =~ today.to_s
    if @month == $2 && @day == $3
      @happy_birthday = true
    end
  end

  def constellation(month, day)
    my_day = (month + day).to_i
    @mine = if my_day.between?(120, 218)
              "水瓶座"
            elsif my_day.between?(219, 320)
              "魚座"
            elsif my_day.between?(321, 419)
              "牡羊座"
            elsif my_day.between?(420, 520)
              "牡牛座"
            elsif my_day.between?(521, 621)
              "双子座"
            elsif my_day.between?(622, 722)
              "蟹座"
            elsif my_day.between?(723, 822)
              "獅子座"
            elsif my_day.between?(823, 922)
              "乙女座"
            elsif my_day.between?(923, 1023)
              "てんびん座"
            elsif my_day.between?(1024, 1122)
              "蠍座"
            elsif my_day.between?(1123, 1221)
              "射手座"
            elsif my_day.between?(1222, 1231) || my_day.between?(101, 109)
              "山羊座"
            end
  end

  def calcage(birthdayStr)
    if birthdayStr !~ /^[0-9]{8}$/
      return -1
    end
    return (Date.today.strftime("%Y%m%d").to_i - birthdayStr.to_i) / 10000
  end
end
