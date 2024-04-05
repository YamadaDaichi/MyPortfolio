class ChangeDatatypeClassTypeOfRatings < ActiveRecord::Migration[5.2]
  def change
    change_column :ratings, :class_type, :string
  end
end
