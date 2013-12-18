class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.text :de
      t.text :para
      t.text :mensagem

      t.timestamps
    end
  end
end
