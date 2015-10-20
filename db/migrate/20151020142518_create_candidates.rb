class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :em_addr
      t.string :city
      t.string :state
      t.string :u_id
      t.string :p_word

      t.timestamps null: false
    end
  end
end
