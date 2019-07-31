json.dataset do 
	json.content @dataset.content
	json.user @dataset.user, :username
	json.task @dataset.task, :name
end