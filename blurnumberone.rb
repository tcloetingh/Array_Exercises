class Image

  def initialize(pixelData)
    @pixelData = pixelData
  end

  def output_image
    for individualArray in @pixelData
      puts individualArray.join
    end
  end
  
end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])


image.output_image