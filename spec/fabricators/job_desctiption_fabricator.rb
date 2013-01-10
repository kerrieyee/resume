Fabricator(:job_description) do
	company {Faker::Lorem.word}
	position {Faker::Lorem.words(num = 3, supplemental = false)}
	description {Faker::Lorem.sentence}
	start_date {Date.today}
	end_date {Date.today + 5}
	location {Faker::Lorem.word}
	current {false}
	resume_id {Fabricate(:resume).id}
end
