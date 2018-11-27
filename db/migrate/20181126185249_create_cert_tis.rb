class CreateCertTis < ActiveRecord::Migration[5.2]
  def change
    create_table :cert_tis do |t|
      t.string :nome

      t.timestamps
    end
  end
end
