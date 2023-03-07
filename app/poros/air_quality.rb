class AirQuality 
  attr_reader :aqi, :datetime, :readable_aqi
  
  def initialize(data)
    @aqi = data[:main][:aqi]
    @datetime = data[:dt]
    @readable_aqi = quality_index
  end

  def quality_index
    if @aqi == 1
       "Good"
    elsif @aqi == 2 
       "Fair"
    elsif @aqi == 3
       "Moderate"
    elsif @aqi == 4
       "Poor"
    else 
       "Very Poor"
    end
  end
end