class CreateInstitutes < ActiveRecord::Migration[5.0]
  def change
    create_table :institutes do |t|
      t.integer :user_id
      t.string :name
      t.text :description
    end

    add_foreign_key :institutes, :users
  end
end
