# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


# Generate fake cities
def generate_city
  City.destroy_all
  i = 0
  while i < 30
    City.create(
      name: Faker::Address.city,
      zip_code: Faker::Address.zip_code
    )
    i += 1
  end
end


=begin def generate_private
  PrivateMessage.destroy_all
  i = 0
  while i < 10
    PrivateMessage.create(
      content: Faker::Lorem.paragraph(sentence_count: 3)
      recipient: User.sample.all
      sender: User.sample.all
    )
    i += 1
  end
end
=end


# Generate fake users
def generate_users
  User.destroy_all
  i = 0
  while i < 10
    User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      age: Faker::Number.between(from: 13, to: 99),
      description: Faker::Lorem.paragraph(sentence_count: 4),
      city_id: City.all.sample.id
    )
    i += 1
  end
end

def generate_tags
  Tag.destroy_all
  i = 0
  while i < 20
    Tag.create(
      title: Faker::Lorem.word
    )
    i += 1
  end
end


def generate_gossip
  Gossip.destroy_all
  i = 0
  while i < 20
    Gossip.create(
      gossip_author: Faker::Lorem.sentence(word_count: 3),
      gossip_content: Faker::Lorem.paragraph(sentence_count: 5),
      user_id: User.all.sample.id
    )
    i += 1
  end
end


def generate_gossip_tag
  GossipTag.destroy_all
  i = 0
  while i < 10
    GossipTag.create(
      tag_id: Tag.order("RANDOM()").limit(1).ids[0],
      gossip_id: Gossip.order("RANDOM()").limit(1).ids[0]
    )
    i += 1
  end
end


generate_city
generate_tags
generate_users
#generate_private
generate_gossip
generate_gossip_tag
