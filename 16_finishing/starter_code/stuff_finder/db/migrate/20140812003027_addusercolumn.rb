class Addusercolumn < ActiveRecord::Migration
  def change
  	add_column :classifieds, :user_id, :integer
  end
end
