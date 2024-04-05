class AddDepartmentToRatings < ActiveRecord::Migration[5.2]
  def change
    add_column :ratings, :department, :text
  end
end
