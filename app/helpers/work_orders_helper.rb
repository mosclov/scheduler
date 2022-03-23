module WorkOrdersHelper
  def time_valid?(work_time, start_time, end_time)
    start_time.between?(work_time, work_time + 59.minutes) || end_time.between?(work_time + 1.minute, work_time + 1.hour ) || work_time.between?(start_time, end_time - 1.minute)
  end

  def validate_orders(technician, work_time)
    last_time = Time.parse("06:00")
    @order_info = nil
    technician.work_orders.order(:time).each do |order|
       start_time = Time.parse(order.time.strftime("%H:%M"))
       end_time = start_time + order.duration.minutes
       if start_time == last_time
         last_time = end_time
       end
       if time_valid?(work_time, start_time, end_time)
         @order_info = order
         last_time = end_time
       elsif last_time <= work_time && last_time < start_time
         @available_time = start_time - last_time
         last_time = end_time
         @dom = order
       end
     end
  end
end
