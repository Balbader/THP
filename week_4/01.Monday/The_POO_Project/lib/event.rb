require 'bundler'
Bundler.require

class Event
  attr_accessor :start_date, :title, :duration, :attendees

  def initialize(date, evt_length, name, arr)
    @start_date = Time.parse(date)
    @duration = evt_length
    @title = name
    @attendees = arr
  end

  def postpone_24
    next_date =  @start_date += 86400
    @start_date = next_date
    return @start_date
  end

  def end_date
    finish = @start_date + (@duration * 60)
    return finish
  end

  def is_past?
    @start_date < Time.now
  end
  
  def is_future?
    @start_date > Time.now
  end

  def is_soon?
    @start_date <= Time.now + 1800
  end

  def age_analysis
    age_array = Array.new
    average = 0

    @attendees.each do |attendee|
      age_array << attendee.age
      average = average + attendee.age
    end

    average = average / @attendees.length

    puts "Voici les âges des participants :"
    puts age_array.join(", ")
    puts "La moyenne d'âge est de #{average} ans"
  end
  
  def to_s
    puts "> Meeting title: #{self.title}"
    puts "> Beginning of meeting: #{self.start_date.strftime("%Y-%m-%d %H:%M")}"
    puts "> End of meeting: #{self.end_date.strftime("%Y-%m-%d %H:%M")}"
    puts "> Passed: #{self.is_past?}"
    puts "> Comming Up: #{self.is_future?}"
    puts "> Starting soon: #{self.is_soon?}"
  end
end

class WorkEvent < Event
  attr_accessor :location

  def initialize(date, evt_length, name, arr, location)
    @location = location

    super(date, evt_length, name, arr)
  end


  def is_event_acceptable?

    if @attendees.length > 3 || @duration > 60
      puts "Cette réunion ne respecte pas nos bonnes pratiques !"
      return false
    else
      puts "Cette réunion est OK."
      return true
    end
  end
end
