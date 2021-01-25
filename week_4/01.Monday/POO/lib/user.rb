require "pry"

class User
attr_writer :mastercard
  def greet
    puts "Hello, world!"
  end 

  def say_hello_to_someone(first_name)
    puts "Hello, #{first_name}!"
  end

  def show_itself
    print "Here is the instance: "
    puts self
  end

  def update_email(email_to_update)
    @email = email_to_update
  end

  def read_email
    return @email
  end

  def read_mastercard
    return @mastercard
  end

end

binding.pry
puts "end of file"
