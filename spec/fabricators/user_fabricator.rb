Fabricator(:user) do
  name { Faker::Name.name }
  email { Faker::Internet.email }
  password "awesome"
end