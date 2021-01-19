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

def ceasar_cypher(string, nb)
  str = string.chars.map{|x| x.ord}
  i = 0
  while str[i]
  if str[i] >= 97 && str[i] <= 122
      str[i] += nb
      if str[i] > 122
          str[i] = str[i] - 122 + 97 - 1
      end
  elsif str[i] >= 65 && str[i] <= 90
      str[i] += nb
      if str[i] > 90
          str[i] = str[i] - 90 + 65 - 1
      end
  end
      i += 1
  end
  return str.map{ |x| x.chr}.join("")
end

def word_counter(str, arr)
  dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

end
























