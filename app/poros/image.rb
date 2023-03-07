class Image
  attr_reader :url, :description

  def initialize(data)
    @url = data[:urls][:raw]
    @description = data[:alt_description]
  end
end