Factory.define :user do |user|
  user.first_name                   "John"
  user.last_name                    "Smith"
  user.short_bio                    "I am a computer scientist who hacks Ruby."
  user.email                        "john@cuberary.com"
  user.password                     "password"
  user.password_confirmation        "password"
end
