class WorkOrdersController < ApplicationController
  def index
    @times = ["06:00","07:00", "08:00", "09:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00"]
    @work_orders = WorkOrder.order(:time)
    @technicians = Technician.all
    grid_headers
  end

  def grid_headers
    array = ["Time"]
    Technician.all.each do |technician|
      array << technician.name
    end
    @headers = array
  end
end
