class CreateOffTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :off_times do |t|
      t.belongs_to :vacation, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :starts_at
      t.date :ends_at

      t.timestamps
    end
  end
end