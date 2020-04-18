class CreateNotification < ActiveRecord::Migration[5.2]
  def change
    create_table :notification do |t|
      t.string :sender
      t.string :receiver
      t.string :title
      t.string :type
      t.string :message

      t.timestamps
    end
  end
end
