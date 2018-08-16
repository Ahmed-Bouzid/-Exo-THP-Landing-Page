class CreateAdressMails < ActiveRecord::Migration[5.2]
  def change
    create_table :adress_mails do |t|
      t.string :email_adress

      t.timestamps
    end
  end
end
