class CursoMinistrado < ApplicationRecord
  has_and_belongs_to_many :instruendos, join_table: 'instruendos_curso_ministrados',
   class_name: 'Usuario'
 has_and_belongs_to_many :instrutors, join_table: 'instrutors_curso_ministrados',
   class_name: 'Usuario'
  enum modalidade: ["À distância", "Presencial"]
  mount_uploader :pladis, ArquivoUploader
  enum tipo_cpc: ["Estágio", "Curso", "Instrução de Quadros", "Visitação", "Conferência", "Congresso"]
  has_and_belongs_to_many :talentos
  def name
    nome
  end
end
