class CreateApplicationTests < ActiveRecord::Migration[6.0]
  def change
    create_table :application_tests do |t|
      t.references :test, null: false, foreign_key: true
      t.references :application, null: false, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
