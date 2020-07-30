class UpdateCityClass < ActiveRecord::Migration[5.2]
  def change
    City.update_all
  end
end
