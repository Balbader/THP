def caesar_sipher(string, nb)
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

