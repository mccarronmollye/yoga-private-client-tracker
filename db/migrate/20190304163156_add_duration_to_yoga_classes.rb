class AddDurationToYogaClasses < ActiveRecord::Migration[5.2]
  def change
    add_column :yoga_classes, :duration, :integer
  end
end
