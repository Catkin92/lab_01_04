def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  if person[:favourites][:snacks].include?(food)
    return true
  else
    return false
  end
end

def add_friend(person, new_friend)
  person[:friends] << new_friend
end

def remove_friend(person, un_friend)
  person[:friends].delete(un_friend)
end

def count_money(array)
  total_monies = 0
  for person in array
  total_monies += person[:monies]
  end
  return total_monies
end

def loan(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
#
end
 # def everyones_favourite_foods(array)
 #  for favourite_food in array
 #    favourite = array[:favourites][0][:snacks]
 #  end
 # end
def everyones_favourite_foods(people)
  result = []
  for person in people
    for snack in person[:favourites][:snacks]
    result << snack
    end
  end
  return result
end

def check_friendlessness(people)
  result = []
  for person in people
    friendship = person[:friend]
      if friendship.length == 0
        result << friendship
    end
  end
end
