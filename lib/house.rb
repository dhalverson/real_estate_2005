class House
  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    @house_area = []
  end

  def add_room(room_param)
    @rooms << (room_param)
  end

# need to remove the $ from the string when converting to integer
  # def above_market_average?
  #   house.price.delete("$").to_i > 500000
  # end

  def rooms_from_category(category_param)
    @rooms.select do |room|
      room.category == (category_param)
    end
  end

  def area
    @rooms.each do |room|
      @house_area << room.area
    end
    @house_area.sum
  end

# price needs to be converted to integer without $
  def price_per_square_foot
    @house_area.sum / house.price.to_i
  end

# use a sort method to order the room area's smallest to largest
  # def rooms_sorted_by_area
  #   @rooms.each do |room|
end
