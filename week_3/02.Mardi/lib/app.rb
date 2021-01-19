def is_multiple_of_3_or_5?(nb)
  if nb.class != Integer || nb <= 0
    return "Je ne prend que des entiers naturels, TG"
elsif nb % 3 == 0 || nb % 5 == 0
    return true
  else
    return false
  end
end
def sum_of_3_or_5_multiples?(nb)
  sum = 0
  i = 0
  if nb > 1000
    return "Error"
  end
  while i < nb do
    if is_multiple_of_3_or_5?(i) == true
      sum += i
      i += 1
    else
      i += 1
    end
  end
  return sum
end

def ceasar_cypher(string, key)