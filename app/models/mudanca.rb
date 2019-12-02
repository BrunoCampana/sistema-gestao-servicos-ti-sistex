class Mudanca < ApplicationRecord
  def name
    nome
  end
  enum status: ["Ideia proposta", "Aguardando aprovação do Ch DO", "Aguardando aprovação do Ch DT", "Aguardando aprovação Ch SSI", "Aguardando aprovação Ch CT/CTA", "Aprovada aguardando execução", "Executada", "Cancelada"]
  has_paper_trail
end
