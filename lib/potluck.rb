class Potluck 
  attr_reader :date, :dishes 
  def initialize(date)
    @date = date 
    @dishes = [] 
  end 

  def add_dish(new_dish)
    @dishes << new_dish
  end 

  def get_all_from_category(category)
    cateogry_dishes = []
    @dishes.find_all do |dish|
      if dish.category == category  
        cateogry_dishes << dish 
      end  
    end 
    cateogry_dishes
  end 
end