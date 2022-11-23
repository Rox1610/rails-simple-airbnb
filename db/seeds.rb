puts 'Nettoyons la DB...'

Flat.destroy_all

puts 'Créons des flats..'

4.times do
  flat = Flat.create!(
    name: Faker::TvShows::BrooklynNineNine.character,
    address: Faker::Address.street_address,
    price_per_night: rand(100..400),
    number_of_guests: rand(1..6)
  )
  puts "Flat #{flat.id} a été créé"
end

puts 'Tout fini!'
