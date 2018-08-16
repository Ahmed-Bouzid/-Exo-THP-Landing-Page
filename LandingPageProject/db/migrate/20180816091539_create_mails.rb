class CreateMails < ActiveRecord::Migration[5.2]
  def change
    create_table :mails do |t|
      t.string :mail_adresse

      t.timestamps
    end
  end
end
