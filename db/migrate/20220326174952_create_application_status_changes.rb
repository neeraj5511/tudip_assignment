class CreateApplicationStatusChanges < ActiveRecord::Migration[6.0]
  def change
    create_table :application_status_changes do |t|
      t.datetime :date_changed
      t.references :application_status, null: false, foreign_key: true
      t.references :application, null: false, foreign_key: true

      t.timestamps
    end
  end
end
