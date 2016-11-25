def pet_shop_name(petshop)
  return petshop[:name]
end


def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end


def add_or_remove_cash(pet_shop, transaction)
  return pet_shop[:admin][:total_cash] += transaction
end


def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end


def increase_pets_sold(pet_shop, sales)
  return pet_shop[:admin][:pets_sold] += sales
end


def stock_count(pet_shop)
  return pet_shop[:pets].count()
end


def pets_by_breed(pet_shop, breed)
  count_array=[]
  for pet in pet_shop[:pets]
   count_array.push(pet[:name]) if pet[:breed] == breed

 end
 return count_array
end


def find_pet_by_name(pet_shop, name)

  for pet in pet_shop[:pets]
    return pet if pet[:name] == name
  end
  return nil
end


def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    pet_shop[:pets].delete(pet) if pet[:name] == name
  end
  
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end


def customer_pet_count(customers)
  array = customers[:pets]
  return array.length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
  customer[:cash] > new_pet[:price] ?  true : false
  
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet == nil
    puts "pet not found"
  elsif pet[:price] > customer[:cash]
    puts "insufficient funds"
  else
    customer[:pets] << pet
    pet_shop[:admin][:pets_sold] +=1
    pet_shop[:admin][:total_cash] += pet[:price]
  end
end





