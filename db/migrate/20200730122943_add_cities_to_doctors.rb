class AddCitiesToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_reference :city, :doctors, foreign_key: true
  end
end
