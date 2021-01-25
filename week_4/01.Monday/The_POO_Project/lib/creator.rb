require_relative "event"
require_relative "user"
require 'bundler'
Bundler.require

class event_creator
    attr_accessor :email
    attr_accessor :age
    attr_accessor :email
    attr_accessor :age
    def event_title
        puts "Wesh la famille, tu veux créer un évenement? C'est quoi ton petit nom?"
        print ">"
        event_title = gets.chomp
    end

    def event_date
        puts "Quelle heure bonhomme?"
        print ">"
        event_date = gets.chomp
    end

    def event_duration
        puts "Combien de minute connard?"
        print ">"
        event_duration = gets.chomp
    end

    def event_attend
        puts "Balance les emails des tocards"
        print ">"
        event_attends = gets.chomp
    end
end