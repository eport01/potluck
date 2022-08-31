require 'rspec'
require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do 
  it 'potluck exists' do 
    potluck = Potluck.new("7-13-18")
    
    expect(potluck.date).to eq("7-13-18")
    expect(potluck.dishes).to eq([])

  end 

  # it 'adds dishes' do 
  #   potluck = Potluck.new("7-13-18")
  #   couscous_salad = Dish.new("Couscous Salad", :appetizer)
  #   cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    
  #   potluck.add_dish(couscous_salad)
  #   potluck.add_dish(cocktail_meatballs)
  #   expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])

  #   expect(potluck.dishes.length).to eq(2)
    

  # end 

  it 'adds lots of new dishes' do 
    potluck = Potluck.new("7-13-18")

    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    candy_salad = Dish.new("Candy Salad", :entre)
    
    potluck.add_dish(couscous_salad)
    expect(potluck.dishes).to eq([couscous_salad])

    potluck.add_dish(summer_pizza)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza])

    potluck.add_dish(roast_pork)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork])
    
    potluck.add_dish(cocktail_meatballs)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs])

    potluck.add_dish(candy_salad)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs, candy_salad])

    expect(potluck.get_all_from_category(:appetizer).first).to eq(couscous_salad)
    # require 'pry'; binding.pry 
    expect(potluck.get_all_from_category(:entre).first).to eq(roast_pork)

  end 




end 