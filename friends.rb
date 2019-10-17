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
