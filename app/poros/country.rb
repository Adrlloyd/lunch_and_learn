class Country
  attr_reader :name, :lat, :lon 

  def initialize(data)
    @name = data[:name][:common]
    @lat = data[:capitalInfo][:latlng][0]
    @lon = data[:capitalInfo][:latlng][1]
  end
end