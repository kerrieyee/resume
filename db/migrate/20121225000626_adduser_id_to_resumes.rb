class AdduserIdToResumes < ActiveRecord::Migration
  def up
  	add_column :resumes, :user_id, :integer, :null => false
  end

  def down
  end
end
