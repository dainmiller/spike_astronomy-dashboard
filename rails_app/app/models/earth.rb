class Earth < Planet

  BASE_URL      = "https://api.spacexdata.com/v3"
  PAYLOAD_URL   = "#{BASE_URL}/payloads"
  LAUNCHES_URL  = "#{BASE_URL}/launches"

  def self.spacex_launches
    launches
  end

  def self.spacex_payloads
    payloads
  end

  private
  def self.payloads
    parse(get(PAYLOAD_URL).body)
  end
  def self.launches
    parse(get(LAUNCHES_URL).body)
  end
end
