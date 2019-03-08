module FortunetellingsHelper
  require "date"

  #正規表現を使い今日の日付を取得($2には月 $3には日付が格納される)
  def your_birthday?
    today = Date.today
    /(^\d{4})-(\d{2})-(\d{2})/ =~ today.to_s
    if @month == $2 && @day == $3
      @happy_birthday = true
    end
  end

  #my_dayにstring型で連結し、その後整数に変換(例 "02" + "22" = "222" → 222)
  def constellation(month, day)
    my_day = (month + day).to_i
    @z_sign = if my_day.between?(120, 218)
              "水瓶"
            elsif my_day.between?(219, 320)
              "魚"
            elsif my_day.between?(321, 419)
              "牡羊"
            elsif my_day.between?(420, 520)
              "牡牛"
            elsif my_day.between?(521, 621)
              "双子"
            elsif my_day.between?(622, 722)
              "蟹"
            elsif my_day.between?(723, 822)
              "獅子"
            elsif my_day.between?(823, 922)
              "乙女"
            elsif my_day.between?(923, 1023)
              "てんびん"
            elsif my_day.between?(1024, 1122)
              "蠍"
            elsif my_day.between?(1123, 1221)
              "射手"
            elsif my_day.between?(1222, 1231) || my_day.between?(101, 109)
              "山羊"
            end
  end
  #年齢を確認
  def calcage(birthdayStr)
    if birthdayStr !~ /^[0-9]{8}$/
      return -1
    end
    return (Date.today.strftime("%Y%m%d").to_i - birthdayStr.to_i) / 10000
  end
end
