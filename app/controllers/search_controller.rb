class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: 'https://api.data.gov/nrel/alt-fuel-stations/v1') do |faraday|
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get do |req|
      req.url 'nearest.json'
      req.params[:api_key] = ENV['nrel_api_key']
      req.params[:limit] = '10'
      req.params[:location] = params[:q]
      req.params[:radius] = '6.0'
      req.params[:fuel_type] = 'ELEC,LPG'
    end
    raw_stations = JSON.parse(response.body)['fuel_stations']

    @stations = []
    raw_stations.each do |station_data|
      @stations << FuelStation.new(station_data)
    end
  end
end
