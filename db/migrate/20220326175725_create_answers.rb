class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.string :total_grades
      t.string :pass
      t.string :answer_details
      t.references :recruiter, null: false, foreign_key: true
      t.references :application_test, null: false, foreign_key: true

      t.timestamps
    end
  end
end
