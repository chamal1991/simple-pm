class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['not-started', 'in-process', 'complete']}

  STATUS_OPTIONS = [
  	['Not Started', 'not-started'],
  	['In Process', 'in-process'], 
  	['Completed', 'complete']
  ]



end
