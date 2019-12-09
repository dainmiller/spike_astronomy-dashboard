class Mars < Planet
  def self.weather
    recent = get("https://api.maas2.jiinxt.com/").try(:body)
    weather = parse(recent)
    if weather
      _ = [*2225..weather['sol']].map do |sol|
        parse get("https://api.maas2.jiinxt.com/#{sol}").body
      end
      _
    end
    nil
  end
end
