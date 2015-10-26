class AddLinkToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :link, :string
  end
end
