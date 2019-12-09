class StatusController < ApplicationController

  def status
    @near_earth_objects ||= NearEarthObject.today
    @spacex_launches    ||= Earth.spacex_launches
    @spacex_payloads    ||= Earth.spacex_payloads
    @mars_weather       ||= Mars.weather
    @nasa_projects      ||= Project.nasa
  end

end
