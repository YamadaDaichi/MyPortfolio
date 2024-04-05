class ChangeDatatypeNicknameOfRatings < ActiveRecord::Migration[5.2]
  def change
    change_column :ratings, :nickname, :string
  end
end
