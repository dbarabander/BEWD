class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
    	t.name :string
    	t.description :text
    	t.image :string

    end
  end
end
