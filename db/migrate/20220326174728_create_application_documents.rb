class CreateApplicationDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :application_documents do |t|
      t.references :document, null: false, foreign_key: true
      t.references :application, null: false, foreign_key: true

      t.timestamps
    end
  end
end
