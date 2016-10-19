class FuelStation
  def initialize(raw_station)
    @name = raw_station['station_name']
    @address = raw_station['street_address']
    @city = raw_station['city']
    @state = raw_station['state']
    @zip = raw_station['zip']
    @fuel_types = raw_station['fuel_type_code']
    @distance = raw_station['distance']
    @access_times = raw_station['access_days_time']
  end

  def name
    @name
  end

  def address
    "#{@address}, #{@city} #{@state} #{@zip}"
  end

  def fuel_types
    if @fuel_types == 'ELEC'
      return 'Electric'
    elsif @fuel_types == 'LPG'
      return 'Propane'
    end
  end

  def distance
    @distance.round(2).to_s + " miles"
  end

  def access_times
    @access_times
  end
end
