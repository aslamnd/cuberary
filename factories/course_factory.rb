Factory.define :course do |course|
  course.sequence(:title) { |n| "CSS#{n} Essential Training" }
  course.description      "This course is super awesome."
  course.duration         "3h 30m"
  course.released         6.months.ago
end
