class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #has_one :cargo
  has_one :perfil_profissional
  enum status: [:inativo, :ativo]
  enum tipo: [:SecInfo, :Nivel1, :Nivel2, :Administrador]

  belongs_to :cliente

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

end
