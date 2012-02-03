# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :app do
    name "MyString"
    tag_line "MyString"
    description "MyText"
    instructions "MyText"
    github_url "MyString"
    demo_url "MyString"
    deployments "MyString"
  end
end
