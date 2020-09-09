class CreateElements < ActiveRecord::Migration[6.0]
  def change
    create_table :elements do |t|
      t.string :name
      t.string :symbol
      t.decimal :atomic_mass

      t.timestamps
    end
  end
end
