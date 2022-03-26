class CreateJobPlatforms < ActiveRecord::Migration[6.0]
  def change
    create_table :job_platforms do |t|
      t.string :code
      t.string :name
      t.string :descrition

      t.timestamps
    end
  end
end
