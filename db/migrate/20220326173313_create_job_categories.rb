class CreateJobCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :job_categories do |t|
      t.string :code
      t.string :name
      t.string :descrition

      t.timestamps
    end
  end
end
