class CreateTudipProcesses < ActiveRecord::Migration[6.0]
  def change
    create_table :tudip_processes do |t|
      t.string :code
      t.string :description
      t.references :recruiter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
