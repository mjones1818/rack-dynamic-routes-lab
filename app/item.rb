class Item
  attr_accessor :name, :price
  @@all = {}
  def initialize(name,price)
    @name = name
    @price = price
    @@all[name.to_sym] = price
  end

  def self.all
    @@all
  end
  
  def self.find_item(item)
    @@all.include?(item)
  end
end
