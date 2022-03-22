require 'csv'

namespace :import do
  desc "Import location, technician, and work_orders cvs docs"

  task scheduler: :environment do
    technicians_file = Rails.root.join('db', 'technicians.csv')
    CSV.foreach(technicians_file, headers: true) do |row|
     Technician.where(name: row['name']).first_or_create
    end

    locations_file = Rails.root.join('db', 'locations.csv')
    CSV.foreach(locations_file, headers: true) do |row|
     Location.where(name: row['name'], city: row['city']).first_or_create
    end

    work_orders_file = Rails.root.join('db', 'work_orders.csv')
    CSV.foreach(work_orders_file, headers: true) do |row|
     WorkOrder.where(
       technician_id: row['technician_id'],
       location_id:   row['location_id'],
       time:          Time.parse(row['time']),
       duration:      row['duration'],
       price:         row['price']
     ).first_or_create
    end
  end
end
