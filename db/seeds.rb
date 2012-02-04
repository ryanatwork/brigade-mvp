
if Rails.env!='production'

require 'faker'

  #Adding Apps
  puts "Adding 50 apps"
  50.times {
    App.create(
      :name => Faker::Company.name,
      :tag_line => Faker::Lorem.paragraph,
      :description => Faker::Lorem.paragraph(3),
      :github_url => Faker::Internet.domain_name,
      :demo_url => Faker::Internet.domain_name,
      :instructions => Faker::Lorem.paragraph(4)
  )
  }
end

