require "pry"

class User

  attr_writer :mastercard #store info without being able to read/access it easily
  attr_reader :birthdate #read the stored information easily without being able to change it
  attr_accessor :email #access the stored information in read and write mode

  @@user_count = 0 #class variable that will count the number of instances created

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

  def update_birthdate(birthdate_to_update)
    @birthdate = birthdate_to_update
  end

  #initialize
  def initialize(email_to_save)
    @email = email_to_save
    @@user_count = @@user_count + 1 #for each user created, we increment @@user_count by 1
    puts "We've sent you a welcome email!"
  end

  def self.count
    return @@user_count
  end

end

binding.pry
puts "end of file"















