def pet_shop_name(name)
  return @pet_shop[:name]
end

def total_cash(cash)
  return @pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, value)
  shop[:admin][:total_cash] += value
end

def pets_sold(shop)
  shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, number)
  shop[:admin][:pets_sold] += number
end

def stock_count(stock)
  stock[:pets].count
end

def pets_by_breed(shop, breed)
  array = []
  pets = shop[:pets]

  for pet in pets
    if (pet[:breed] == breed)
      array << pet
    end
  end
  return array
end

def find_pet_by_name(shop, name)
  found = nil

  for pet in shop[:pets]
   found = pet if (pet[:name] == name)
 end
 return found
end