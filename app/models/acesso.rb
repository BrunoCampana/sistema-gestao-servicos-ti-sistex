class Acesso < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable
  
  enum status: [:Inativo, :Ativo]
  enum tipo: [:Admin, :SecCpc, :SecGer, :ChDT, :SecLogTI, :SecProj, :SPC, :SSI, :Chefia, :Outros, :SecInfo, :DO]

  def active_for_authentication?
    super && status == "Ativo"
  end
end
