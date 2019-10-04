class RequisicaoLinkProprio < ApplicationRecord
  include RailsAdminCharts
  mount_uploader :parecer, ArquivoUploader
  belongs_to :cliente
  enum parecer_cta: ["Precisa de Link Próprio", "Não precisa de Link Próprio", "Não avaliado", "Em análise"]
  enum parecer_citex: ["Desfavorável", "Favorável", "Não analisado"]
  enum possui_link_proprio: [:Não, :Sim]
  enum enlace: [:Satelital, :Óptico, :Rádio]

  def self.graph_data(since = 365.days.ago)
    Cliente.group(:possui_link_proprio).count.to_a
  end

  def name
    descricao
  end

  def self.chart_type
    'pie'
  end

end
