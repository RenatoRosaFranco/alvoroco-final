class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.date :birthdate
      t.string :artistic_name
      t.string :age
      t.string :cpf
      t.string :rg
      t.string :address
      t.string :city
      t.string :phone
      t.string :email
      t.string :schooling
      t.boolean :experienced
      t.string :experience_description
      t.string :signature

      t.timestamps
    end
  end
end
