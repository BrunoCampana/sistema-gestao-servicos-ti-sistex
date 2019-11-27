class Usuario < ApplicationRecord

  belongs_to :hierarq
  belongs_to :cliente
  has_and_belongs_to_many :idiomas
  has_and_belongs_to_many :cargos
  has_and_belongs_to_many :habilidades
  has_and_belongs_to_many :formacao_mil
  has_and_belongs_to_many :formacao_acad
  has_and_belongs_to_many :cert_tis
  has_and_belongs_to_many :encargos
  has_and_belongs_to_many :cursos
  has_and_belongs_to_many :vots
  has_and_belongs_to_many :curso_externos
  has_and_belongs_to_many :instruendos, join_table: 'instruendos_curso_ministrados',
    class_name: 'CursoMinistrado'
  has_and_belongs_to_many :instrutores, join_table: 'instrutors_curso_ministrados',
    class_name: 'CursoMinistrado'
  has_and_belongs_to_many :fisc_titulars, join_table: 'fisc_titulars_fornecedors',
    class_name: 'Fornecedor'
  has_and_belongs_to_many :fisc_substs, join_table: 'fisc_substs_fornecedors',
    class_name: 'Fornecedor'

  enum situacao: ["Integrante antigo", "Integrante atual"]

  def name
    nome
  end
end
