class RenameColumnOfQuestionTable < ActiveRecord::Migration
  def up
  	rename_column :questions, :decription, :description
  end

  def down
  	rename_column :questions, :description, :decription
  end
end
