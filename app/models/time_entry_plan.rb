class TimeEntryPlan < ApplicationRecord
  belongs_to :time_entry
  belongs_to :time_plan
end
