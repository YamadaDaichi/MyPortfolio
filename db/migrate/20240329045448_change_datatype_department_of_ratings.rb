class ChangeDatatypeDepartmentOfRatings < ActiveRecord::Migration[5.2]
  def change
    change_column :ratings, :department, :string
  end
end
