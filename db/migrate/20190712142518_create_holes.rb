class CreateHoles < ActiveRecord::Migration[5.2]
  def change
    create_table :holes do |t|
      t.integer :number
      t.integer :course_id
      t.integer :par

      t.timestamps
    end
  end
end
