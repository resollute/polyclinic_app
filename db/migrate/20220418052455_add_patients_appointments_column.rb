class AddPatientsAppointmentsColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :patients_appointments, :integer, array: true, default: []
  end
end
