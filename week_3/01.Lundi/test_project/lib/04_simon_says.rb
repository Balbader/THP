def echo(str)
  return str
end

def shout(str)
  return str.upcase
end

def repeat(str, count=2)
  return Array.new(count, str).join(" ")
end

def start_of_word(str, nb)
  i = 0
  word = ""
  while i < nb
    word += str[i]
    i += 1
  end
  return word
end

def first_word(str)
  return "#{str.split(" ").first}"
end

def titleize(str)
  str = str.capitalize
  str = str.split(" ")
  i = 0
  while i < str.length
    if str[i].length <= 3
      str[i] = str[i]
      i += 1
    else
      str[i] = str[i].capitalize
      i += 1
    end
  end
  return str.join(" ")
end
