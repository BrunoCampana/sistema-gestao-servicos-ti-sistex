class CursoMinistrado < ApplicationRecord
  has_and_belongs_to_many :instruendos, join_table: 'instruendos_curso_ministrados',
   class_name: 'Usuario'
 has_and_belongs_to_many :instrutors, join_table: 'instrutors_curso_ministrados',
   class_name: 'Usuario'
  enum modalidade: [:Distância, :Presencial]
  mount_uploader :pladis, ArquivoUploader
  enum tipo_cpc: [:Estágio, :Curso, :Instrução_de_Quadros, :Visitação, :Conferência, :Congresso]
  def name
    nome
  end
end
