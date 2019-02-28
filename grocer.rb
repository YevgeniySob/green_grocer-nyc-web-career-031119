def consolidate_cart(cart)
  cart.each_with_object({}) do |element, new_ele|
    element.each do |item, parameters|
      if new_ele[item]
        parameters[:count] += 1
      else
        parameters[:count] = 1
        new_ele[item] = parameters
      end
    end
  end
end

def apply_coupons(cart, coupons)
  coupons.each do |ele|
    name = ele[:item]
    if cart[name] && cart[name][:count] >= ele[:num]
      if cart["#{name} W/COUPON"]
        cart["#{name} W/COUPON"][:count] += 1
      else
        cart["#{name} W/COUPON"] = {:price => ele[:cost], :clearence => cart[name][:clearence], :count => 1}
    
end

def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  
end
