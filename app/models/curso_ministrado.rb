class CursoMinistrado < ApplicationRecord
  has_and_belongs_to_many :instruendos, join_table: 'instruendos_curso_ministrados',
   class_name: 'Usuario'
  has_and_belongs_to_many :instrutors, join_table: 'instrutors_curso_ministrados',
   class_name: 'Usuario'
   has_and_belongs_to_many :talentos
  enum modalidade: ["À distância", "Presencial"]
  enum tipo_cpc: ["Estágio", "Curso", "Instrução de Quadros", "Visitação", "Conferência", "Congresso"]

  mount_uploader :pladis, ArquivoUploader

  def name
    nome
  end

  def qtd_alunos_internos
    instruendos.count
  end

  def qtd_alunos_externos
    talentos.count
  end

  def qtd_alunos_total
    instruendos.count + talentos.count
  end

end
