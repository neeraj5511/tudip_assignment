class CreateProcessSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :process_steps do |t|
      t.string :status
      t.string :priority
      t.references :tudip_process, null: false, foreign_key: true
      t.references :step, null: false, foreign_key: true

      t.timestamps
    end
  end
end
