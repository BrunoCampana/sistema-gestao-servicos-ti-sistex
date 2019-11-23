class Melhorandodevise < ActiveRecord::Migration[5.2]
  def change
    remove_index :usuarios, name: "index_usuarios_on_email"
    remove_column :usuarios, :remember_created_at, :datetime
    add_column :acessos, :failed_attempts, :integer, default: 0, null: false
    add_column :acessos, :unlock_token, :string
    add_column :acessos, :locked_at, :datetime
    add_index :acessos, :unlock_token, unique: true  
  end
end
