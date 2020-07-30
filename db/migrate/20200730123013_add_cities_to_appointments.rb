class AddCitiesToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_reference :city, :appointments, foreign_key: true
  end
end
