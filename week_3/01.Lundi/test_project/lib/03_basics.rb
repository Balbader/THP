def who_is_bigger(a, b, c)
  if a == nil || b == nil || c == nil
    return "nil detected"
  end
  if a > b && a > c
    return "a is bigger"
  elsif b > a && b > c
    return "b is bigger"
  else
    return "c is bigger"
  end
end

def reverse_upcase_noLTA(string)
  str = string.upcase
  i = 0
  while str[i]
    if str[i] == "T"
      str[i] = ""
      i += 1
    end
    i += 1
  end
  j = 0
  while str[j]
    if str[j] == "A" || str[j] == "L"
      str[j] = ""
      j += 1
    end
    j += 1
  end
  return str.reverse
end

def array_42(arr)
  return arr.include? "42".to_i
end

def magic_array(arr)
  return arr.flatten.sort.collect{ |i| i * 2}.reject{ |x| x % 3 == 0}.uniq 
end
