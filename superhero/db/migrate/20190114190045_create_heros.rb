class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :secret_identity
      t.string :neighborhood
    end
  end
end
