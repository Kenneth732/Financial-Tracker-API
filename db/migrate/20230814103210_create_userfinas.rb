class CreateUserfinas < ActiveRecord::Migration[6.1]
  def change
    create_table :userfinas do |t|
      t.string :name
      t.integer :income
      t.string :years

      t.timestamps
    end
  end
end
