class WorkOrdersController < ApplicationController
  def index
    @times = ["06:00","07:00", "08:00", "09:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00",]
    @work_orders = WorkOrder.order(:time)
    @technicians = Technician.all
    @dom = nil
    @available_time = nil
    grid_headers
  end

  def grid_headers
    @headers = ["Time"]
    Technician.all.each do |technician|
      @headers << technician.name
    end
  end
end
