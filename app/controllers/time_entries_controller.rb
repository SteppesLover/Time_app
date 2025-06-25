class TimeEntriesController < ApplicationController
   def index
    @time_entry = TimeEntry.new
    @time_entries = TimeEntry.all
  end

  def create
    @time_entry = TimeEntry.new(time_entry_params)
    if @time_entry.save
      redirect_to time_entries_path, notice: "Entry created"
    else
      @time_entries = TimeEntry.all
      render :index
    end
  end

  private

  def time_entry_params
    params.require(:time_entry).permit(:activity_name, :start_time, :end_time)
  end
end