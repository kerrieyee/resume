module ResumesHelper
	def create_resume_list(resumes)
		if resumes.length > 0
			resumes.each do |resume|
				resume.name.to_json
			end
		end
	end
end
