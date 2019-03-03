class CreateYogaClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :yoga_classes do |t|
      t.string :location
      t.string :title
      t.string :intention
      t.string :class_plan
      t.string :notes
      t.integer :class_size
      t.belongs_to :user, foreign_key: true
      t.belongs_to :client, foreign_key: true

      t.timestamps
    end
  end
end
