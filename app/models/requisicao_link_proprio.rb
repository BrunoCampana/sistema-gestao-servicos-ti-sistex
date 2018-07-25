class RequisicaoLinkProprio < ApplicationRecord
  include RailsAdminCharts
  mount_uploader :parecer, ArquivoUploader
  belongs_to :cliente
  enum parecer_cta: [:Nao_precisa_link_proprio, :Precisa_link_proprio]
  enum parecer_citex: [:Desfavorável, :Favorável]
  enum possui_link_proprio: [:Não, :Sim]
  enum enlace: [:Satelital, :Optico]

  def self.graph_data(since = 365.days.ago)
    Cliente.group(:possui_link_proprio).count.to_a
  end

  def self.chart_type
    'pie'
  end

end
