def find_item_by_name_in_collection(name, collection)
  #collection.each{|item| item[:item] == name} collection[:item]
 i= 0
 while i<collection.length do 
   if collection[i][:item] == name
     return collection[i]
    end
  i+=1 
  end
  nil
end

def consolidate_cart(cart)
  new_cart = []
  cart.each do |grocery_item|
    current_item = find_item_by_name_in_collection(grocery_item[:item], new_cart)
    if current_item
      new_cart.each do |new_cart_item|
        if new_cart_item[:item] === current_item[:item]
          new_cart_item[:count] += 1
        end
      end
    else
      grocery_item[:count] = 1
      new_cart.push(grocery_item)
    end
  end
  new_cart
 
end

#if new_cart[:item]== content[:item]; 
#    new_cart[:count]+=1;
#  else new_cart.push(content);
#        new_cart[:count] = 1;
#end

 #new_cart =[]
#  cart.each{|content|
#  if new_cart.select{|values| values ==content} !=nil
#  current_item = content
#   new_cart.select{|values| values ==content}[:count]+=1
#  else
#  new_cart.push(:item => content[:item], :price => content[:price], :clearance => content[:clearance], :count => 1)
#end
#  }
# new_cart


  