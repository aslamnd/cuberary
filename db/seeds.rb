user = User.create!( first_name: "Aslam", last_name: "Najeebdeen", email: "aslamnajeem@gmail.com", password: "password" )
user.confirm!

["Lynda.com", "Total Training", "VTC", "Lullabot", 
 "TreeHouse (ThinkVitamin)", "CBT Nuggets", "Digital Tutors",
 "Video 2 Brain", "Kelby Training", "Other"].each do |company_name|
  Company.create!(name: company_name)
end
