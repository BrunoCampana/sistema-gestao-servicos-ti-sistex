class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :cargos
  has_many :CargoExercidos
  has_many :ParticipouProjs
  belongs_to :formacao_mil
  belongs_to :formacao_acad
  has_and_belongs_to_many :idiomas
  has_and_belongs_to_many :cert_tis
  has_and_belongs_to_many :cursos
  has_and_belongs_to_many :habilidades
  enum status: [:Inativo, :Ativo]
  enum tipo: [:Admin, :SecCpc, :SecGer, :ChDT, :SecLogTI, :SecProj, :SPC, :SSI, :Chefia, :Outros, :SecInfo, :DO]
  enum associado: [:CIRMAM, :ASA, :Nenhum]
  belongs_to :cliente
  belongs_to :hierarq
  has_and_belongs_to_many :vots
  has_and_belongs_to_many :curso_externos
  has_and_belongs_to_many :encargos
  has_and_belongs_to_many :instruendos, join_table: 'instruendos_curso_ministrados',
    class_name: 'CursoMinistrado'
  has_and_belongs_to_many :instrutores, join_table: 'instrutors_curso_ministrados',
    class_name: 'CursoMinistrado'
  def name
    nome
  end

  def active_for_authentication?
    super && status == "Ativo"
  end
end
