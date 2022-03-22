module WorkOrdersHelper
  def time_valid?(work_time, start_time, end_time)
    start_time.between?(work_time, work_time + 1.hour - 1.minute) || end_time.between?(work_time, work_time + 1.hour ) || work_time.between?(start_time, end_time)
  end
end
