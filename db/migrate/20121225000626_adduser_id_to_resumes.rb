class AdduserIdToResumes < ActiveRecord::Migration
  def change
  	add_column :resumes, :user_id, :integer, :null => false
  	add_index :resumes, :user_id
  end
end
