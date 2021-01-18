def time_string(nb)
  t = Time.new(0)
  return (t + nb).strftime("%H:%M:%S")
end
