class CreateLinkGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :link_groups do |t|
      t.references :link, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
