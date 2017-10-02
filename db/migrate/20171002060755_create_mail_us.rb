class CreateMailUs < ActiveRecord::Migration[5.0]
  def change
    create_table :mail_us do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.text :description

      t.timestamps
    end
  end
end
