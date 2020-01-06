class CreateCallbacks < ActiveRecord::Migration
  def change
    create_table :callbacks do |t|
      t.text :notify_url
      t.text :params

      t.timestamps null: false
    end
  end
end
