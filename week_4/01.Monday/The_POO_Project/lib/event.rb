require 'bundler'
Bundler.require

class Event
  attr_accessor :start_date
  attr_accessor :title
  attr_reader :duration
  attr_reader :attendees

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
    age_array = [] #On initialise un array qui va contenir les âges de tous les participants à un évènement
    average = 0 #On initialise une variable pour calculer la moyenne d'âge à l'évènement

    @attendees.each do |attendee| #On parcourt tous les participants (objets de type User)
      age_array << attendee.age #leur âge est stocké dans l'array des âges
      average = average + attendee.age #leur âge est additionné pour préparer le calcul de la moyenne
    end

    average = average / @attendees.length #on divise la somme des âges pour avoir la moyenne

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

binding.pry
puts "end of file"
