require 'rest-client'
require "json-schema"
require 'minitest'
require 'jsonpath'

class ApiPage
  include PageObject
  @@api_json

  def call_custom_api_request
    begin
      resp = RestClient.get 'http://www.virginholidays.co.uk/locations-public-api/search/location/new-haven',
                                {:params => {bookingType:5, brand:205}}
      @@api_json = JSON.parse(resp.body)
    rescue => e
      puts(e.response)
    end

  end

  def schema_validation
    schema_templ = self.get_schema
    begin
      validator = JSON::Validator.validate!(schema_templ, @@api_json)
    rescue JSON::Schema::ValidationError => e
        puts e.message
    end
  end

  def get_schema
    File.read('./json_schemas/vhols-json-schema.json')
  end

  def check_using_jsonpath
    car_location_id = JsonPath.new('$..carLocationId').on(@@api_json).first
    city_name = JsonPath.new('$..cityName').on(@@api_json).first

    cond1 = car_location_id == "4174"
    cond2 = city_name == "HVN"
    (car_location_id == "4174" && city_name == "HVN")

  end
end