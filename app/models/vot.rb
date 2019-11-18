class Vot < ApplicationRecord
  #include RailsAdminCharts
  #has_paper_trail
  has_and_belongs_to_many :usuarios
  belongs_to :cliente

  mount_uploader :relatorio, ArquivoUploader
  enum modo_transporte: [:Aéreo, :Fluvial, :Rodoviário]
  enum pagamentos_realizados: ["Não", "Com erros", "Alguns", "Sim"]

  def name
    titulo
  end

  #def self.graph_data(since = 365.days.ago)
  #  Vot.group(:cliente).count.to_a
  #end

  #def self.chart_type
  #  'line'
  #end
  has_paper_trail
end
