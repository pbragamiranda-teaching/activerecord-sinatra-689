require 'faker'

puts "creating 24 restaurants"

24.times do
  rest = Restaurant.create(name: Faker::Coffee.blend_name ,
                        city: Faker::Address.city)

  puts "#{rest.id} created"

end

puts "done."

