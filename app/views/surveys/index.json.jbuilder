json.survey do 
	json.name @survey.name
	json.project @survey.project.name
	json.questions  @survey.questions, :name, :id, :answers 
end

