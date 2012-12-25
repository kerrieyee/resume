Fabricator(:resume) do
	name {Faker::Name.name}
	description {Faker::Lorem.sentence}
	user_id {Fabricate(:user)}
end