class Project < ApplicationRecord
  has_many :tasks
  belongs_to :user


def badge_color
	case status
when 'not-started'
		'secondary'
	when 'in-process'
		'info'
	when 'complete'
		'success'
	end	

end

def status
	return 'not-started' if tasks.none?
	if tasks.all? {|task| task.complete?}
		'complete'
		elsif tasks.any? {|task| task.in_progress?}
			'in-progress'
			

end

end

def present_complete
return 0 if tasks.none?
complete_tasks = tasks.select {|task|task.complete?}.count
((complete_tasks.to_f / tasks.count)*100).round 
end


end

