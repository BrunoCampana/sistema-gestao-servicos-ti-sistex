class Vot < ApplicationRecord
  include RailsAdminCharts
  #has_paper_trail
  mount_uploader :relatorio, ArquivoUploader
  belongs_to :cliente
  has_and_belongs_to_many :usuarios
  enum modo_transporte: [:Aéreo, :Fluvial, :Rodoviário]
  enum pagamentos_realizados: [:Não, :Com_erros, :Alguns, :Sim]

  def self.graph_data(since = 365.days.ago)
    Vot.group(:cliente).count.to_a
  end

  def self.chart_type
    'line'
  end

end
