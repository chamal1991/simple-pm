class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['not-started', 'in-process', 'complete']}

  STATUS_OPTIONS = [
  	['Not Started', 'not-started'],
  	['In Process', 'in-process'], 
  	['Completed', 'complete']
  ]

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

def complete?
	status == 'complete'
end

def in_progress?
	status == 'in-process'
end

def not_started?
	status == 'not-started'
end


end
