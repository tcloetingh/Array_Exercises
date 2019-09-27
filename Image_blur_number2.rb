class Image


def initialize(image)
	@pixel_array = image
end


def output_image
	 @pixel_array.each do |row|
	 puts row.join
  end
end


def bloom


	indices_array =[]
	@pixel_array.each_with_index do |row, row_index|
		row.each_with_index do |element, element_index|
			indices_array << [row_index, element_index] if element == 1
      end
    end    
    

 
	indices_array.each do |coordinate|
	   @pixel_array[coordinate[0]-1][coordinate[1]] = 1 if coordinate[0] > 0
	   @pixel_array[coordinate[0]][coordinate[1]-1] = 1 if coordinate[1] > 0
	   @pixel_array[coordinate[0]+1][coordinate[1]] = 1 if coordinate[0] < @pixel_array.length - 1
       @pixel_array[coordinate[0]][coordinate[1]+1] = 1 if coordinate[1] < @pixel_array[0].length - 1
    end
     

    
end 



  
end


image = Image.new([
  [0, 0, 0, 0, 0],
  [0, 0, 0, 1, 0],
  [0, 0, 0, 0, 0],
  [0, 1, 0, 0, 0]
])




image.bloom
image.output_image




