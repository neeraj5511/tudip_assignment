class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.string :code
      t.integer :duration
      t.integer :max_score

      t.timestamps
    end
  end
end
