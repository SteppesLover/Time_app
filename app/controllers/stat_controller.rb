class StatController < ActionController::Base
  def index
    messages = Message.all

    # Группировка по типу времени
    @time_spendings = messages.group_by(&:time_spend_type).transform_values do |group|
      group.sum { |msg| ((msg.end_time - msg.start_time) / 60).to_i rescue 0 }
    end

    # Группировка по названию активности
    @activities = messages.group_by(&:activity).transform_values do |group|
      group.sum { |msg| ((msg.end_time - msg.start_time) / 60).to_i rescue 0 }
    end
  end
end