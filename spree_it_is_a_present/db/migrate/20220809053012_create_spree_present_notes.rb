require "spree_extension/migration"

class CreateSpreePresentNotes < SpreeExtension::Migration[7.0]
  def change
    create_table :spree_present_notes do |t|
      t.belongs_to :order, index{ unique: true}, null: false
      t.string :resipient_name
      t.string :dedication

      t.timestamps
    end
  end
end
