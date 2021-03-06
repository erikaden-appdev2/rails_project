desc "Fill the database tables with some sample data"
task sample_data: :environment do
  starting = Time.now

  Trip.delete_all
  Photo.delete_all
  Participant.delete_all
  Highlight.delete_all
  User.delete_all

  people = Array.new(10) do
    {
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
    }
  end

  people << { first_name: "Alice", last_name: "Smith" }
  people << { first_name: "Bob", last_name: "Smith" }
  people << { first_name: "Carol", last_name: "Smith" }
  people << { first_name: "Doug", last_name: "Smith" }

  people.each do |person|
    username = person.fetch(:first_name).downcase

    user = User.create(
      email: "#{username}@example.com",
      password: "password",
      username: username.downcase,
      first_name: username.capitalize,
      last_name: person.fetch(:last_name).capitalize,
    )

    p user.errors.full_messages
    p user.username
  end

  users = User.all

  users.each do |user|
    rand(6).times do
      trip = user.own_trips.create(
        name: "Trip to #{Faker::Nation.capital_city}",
        location: Faker::Nation.capital_city,
        start_date: Faker::Date.in_date_period,
        end_date: Faker::Date.in_date_period
      )

     p trip.errors.full_messages
     p trip.name
    end 
  end

  trips = Trip.all

  trips.each do |trip|
    rand(6).times do
      highlight = trip.own_highlights.create(
        description: Faker::Beer.brand,
        location: Faker::TvShows::GameOfThrones.city
      )
    p highlight.errors.full_messages
    end 
  end



  trips.each do |trip|
    rand(4).times do
      participant = trip.own_participants.create(
        name: Faker::TvShows::GameOfThrones.character
      )
      p participant.errors.full_messages
    end 
  end

  photo_array = [10,100,1000,1001,1005,1006,1011,1015,1016,1018,1029,1035,1036,1038,1039,1040,1043,1047,1050,1052,1057,1067,116,12,122,129,13,134,136,142,15,162,164,174,177,179,188,191,195,196,203,211,214,218]

  trips.each do |trip|
    3.times do
      photo = trip.own_photos.create(
        url: "https://picsum.photos/id/" + photo_array.sample.to_s + "/200"
      )
      p photo.errors.full_messages
    end 
  end

  




  ending = Time.now
  p "It took #{(ending - starting).to_i} seconds to create sample data."
  p "There are now #{User.count} users."
  p "There are now #{Trip.count} trips."
  p "There are now #{Participant.count} participants."
  p "There are now #{Highlight.count} highlights."
  p "There are now #{Photo.count} photos."
end