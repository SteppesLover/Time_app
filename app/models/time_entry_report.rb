class TimeEntryReport < ApplicationRecord
  belongs_to :time_entry
  belongs_to :report
end
