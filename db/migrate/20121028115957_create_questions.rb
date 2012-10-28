class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.string :title
      t.text :decription
      t.datetime :last_edit_time
      t.datetime :last_activity_time

      t.timestamps
    end
  end
end
