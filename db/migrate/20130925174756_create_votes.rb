class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :option
    end
  end
end
