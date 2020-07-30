class AddCitiesToPatients < ActiveRecord::Migration[5.2]
  def change
    add_reference :city, :patient, foreign_key: true
  end
end
