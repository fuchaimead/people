genders = ['female', 'male']
haircolor = ['black', 'blonde', 'red','brown','other']
eyecolor = ['green','blue','black','gray', 'brown', 'other']
is_alive = [true, false]


def cc(name, age, hair_color, eye_color, gender, phone, alive)
  Person.create(name: name, age: age, hair_color: hair_color, eye_color: eye_color, gender: gender, phone: phone, alive: alive)
end

30.times do
cc(
name = Faker::Name.name,
age = Faker::Number.between(18, 45),
hair_color = haircolor.sample,
eye_color = eyecolor.sample,
gender = genders.sample,
phone = Faker::PhoneNumber.phone_number,
alive = is_alive.sample)
end