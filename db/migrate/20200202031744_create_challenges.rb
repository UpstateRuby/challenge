class CreateChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :challenges do |t|
      t.string :name
      t.text :rules
      t.integer :duration_in_days
      t.references :user, index: true
      t.timestamps
    end
  end
end
