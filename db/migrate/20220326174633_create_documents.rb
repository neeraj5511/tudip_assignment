class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string :name
      t.datetime :last_update

      t.timestamps
    end
  end
end
