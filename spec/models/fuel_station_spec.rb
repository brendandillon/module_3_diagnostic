require 'rails_helper'

RSpec.describe FuelStation do
  let(fuel_station) do
    FuelStation.new({
      "access_days_time": "24 hours daily",
      "cards_accepted": null,
      "date_last_confirmed": "2016-10-19",
      "expected_date": null,
      "fuel_type_code": "ELEC",
      "id": 66897,
      "groups_with_access_code": "Public",
      "open_date": null,
      "owner_type_code": null,
      "status_code": "E",
      "station_name": "UDR",
      "station_phone": "888-758-4389",
      "updated_at": "2016-10-19T08:20:00Z",
      "geocode_status": "GPS",
      "latitude": 39.7300224,
      "longitude": -104.9883424,
      "city": "Denver",
      "intersection_directions": "816 ACOMA 1; For residents only - 5th Floor",
      "plus4": null,
      "state": "CO",
      "street_address": "800 Acoma St",
      "zip": "80204",
      "bd_blends": null,
      "e85_blender_pump": null,
      "ev_connector_types": [
        "J1772"
      ],
      "ev_dc_fast_num": null,
      "ev_level1_evse_num": null,
      "ev_level2_evse_num": 2,
      "ev_network": "ChargePoint Network",
      "ev_network_web": "http://www.chargepoint.com/",
      "ev_other_evse": null,
      "hy_status_link": null,
      "lpg_primary": null,
      "ng_fill_type_code": null,
      "ng_psi": null,
      "ng_vehicle_class": null,
      "ev_network_ids": {
        "posts": [
          "1:118249"
        ]
      },
      "distance": 0.3117
    })
  end      
  
  it 'has a name' do
    expect(fuel_station.name).to eq('UDR')
  end

  it 'has an address' do
    expect(fuel_station.address).to eq('800 Acoma St')
  end

  it 'has fuel types' do
    expect(fuel_station.fuel_types).to eq('Electric')
  end

  it 'has a distance' do
    expect(fuel_station.distance).to eq('0.31 miles')
  end

  it 'has access times' do
    expect(fuel_station.access_times).to eq('24 hours daily')
  end
end
