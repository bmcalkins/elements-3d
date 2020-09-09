class CreateElements < ActiveRecord::Migration[6.0]
  def change
    create_table :elements do |t|
      t.string :name
      t.decimal :atomic_mass
      t.string :symbol

      t.timestamps
    end
  end
end
