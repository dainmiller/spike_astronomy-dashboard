class Structure
  def self.parse _
    begin
      JSON.parse _
    rescue
    end
  end
  def self.get _
    begin
      HTTParty.get _
    rescue
    end
  end
end
