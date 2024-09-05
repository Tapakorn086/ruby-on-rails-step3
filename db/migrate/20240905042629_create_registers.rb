class CreateRegisters < ActiveRecord::Migration[7.1]
  def change
    create_table :registers do |t|
      t.string :firstName
      t.string :lastName
      t.date :birthDate
      t.string :gender
      t.string :email
      t.string :phone
      t.string :selectSubject

      t.timestamps
    end
  end
end
