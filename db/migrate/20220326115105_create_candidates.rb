class CreateCandidates < ActiveRecord::Migration[6.0]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps
    end
  end
end
