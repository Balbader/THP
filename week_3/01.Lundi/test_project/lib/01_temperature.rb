def ftoc(nb)
  return (nb - 32) * 5 / 9
end

def ctof (nb)
  return  (nb.to_i * 9.0 / 5) + 32
end
