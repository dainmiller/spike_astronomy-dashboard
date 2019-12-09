class Project < Structure

  API_KEY       = "api_key=pFU6LbWMMfkYg4RitdRNUZJf4Nol8KCOwWOZrWUS"
  BASE_URL      = "https://api.nasa.gov/techport/api"
  PROJECTS_URL  = "#{BASE_URL}/projects"

  def self.nasa
    ids(10).map { |id| nasa_project_details id }
  end

  private
  def self.nasa_project_details id
    begin
      parse get("#{PROJECTS_URL}/#{id}?#{API_KEY}").body
    rescue
      []
    end
  end
  def self.ids quantity
    projects['projects']['projects'].map { |e| e['id'] }.take(quantity)
  end
  def self.projects
    begin
      parse get("#{PROJECTS_URL}?#{API_KEY}").body
    rescue
      []
    end
  end

end
