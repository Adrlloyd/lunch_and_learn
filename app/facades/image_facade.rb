class ImageFacade
  def self.images(country)
    ImageService.images(country)[:results].map do |data|
      Image.new(data)
    end
  end
end