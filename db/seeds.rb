genders = ['Female', 'Male', 'Other']
hair_colors = ['Black', 'Brown', 'Blond', 'Red', 'White', 'Gray', 'Other']
eye_colors = ['Amber', 'Blue', 'Brown', 'Gray', 'Green', 'Hazel', 'Violet', 'Other']
is_alive = [true, false]

30.times do |n|
  name = Faker::Name.name
  age =  rand(1..100)
  gender = genders.sample
  hair_color = hair_colors.sample
  eye_color = eye_colors.sample
  alive = is_alive.sample
Person.create!(name: name,
              age: age,
              gender: gender,
              hair_color: hair_color,
              eye_color: eye_color,
              alive: alive)
end
