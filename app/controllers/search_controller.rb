class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: 'https://api.data.gov/nrel/alt-fuel-stations/v1') do |faraday|
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get do |req|
      req.url 'nearest.json'
      req.params[:
  end
end
