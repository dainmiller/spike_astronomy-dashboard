class NearEarthObject < Structure

  TODAY = Date.today.to_s

  def self.today
    neos[TODAY]
  end

  private
  def self.neos
    recent['near_earth_objects']
  end
  def self.recent
    parse get("https://api.nasa.gov/neo/rest/v1/feed?api_key=2rtIrHIfZAo8Z6YqohRvtvk6IFqFlbUMnWimqkLs").body
  end
end
