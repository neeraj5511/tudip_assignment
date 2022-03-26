class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :description
      t.string :code
      t.datetime :date_published
      t.datetime :job_start_date
      t.string :no_of_vacancies
      t.references :tudip_process, null: false, foreign_key: true
      t.references :job_platform, null: false, foreign_key: true
      t.references :job_position, null: false, foreign_key: true
      t.references :job_category, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
