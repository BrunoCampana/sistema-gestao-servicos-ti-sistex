class CreateAcessos < ActiveRecord::Migration[5.2]
  def change
    create_table :acessos do |t|
      t.string :nome
      t.string :email
      t.string :senha
      t.integer :status
      t.integer :tipo
      t.timestamps
    end

    remove_column :usuarios, :status, :integer
    remove_column :usuarios, :tipo, :integer
    remove_column :usuarios, :encrypted_password, :string
    remove_column :usuarios, :reset_password_token, :string
    remove_column :usuarios, :reset_password_sent_at, :datetime
    remove_column :usuarios, :sign_in_count, :integer
    remove_column :usuarios, :current_sign_in_at, :datetime
    remove_column :usuarios, :last_sign_in_at, :datetime
    remove_column :usuarios, :current_sign_in_ip, :string
    remove_column :usuarios, :last_sign_in_ip, :string
  end
end
