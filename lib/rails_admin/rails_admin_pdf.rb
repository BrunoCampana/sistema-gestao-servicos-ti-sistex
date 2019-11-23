module RailsAdminPdf
end

require 'rails_admin/config/actions'
require 'prawn'
#require 'gruff'

module RailsAdmin
  module Config
    module Actions
      class Pdf < Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :member do
          true
        end

        register_instance_option :pjax? do
          false
        end

        register_instance_option :controller do
          Proc.new do
            # Configurando PDF
            PDF_OPTIONS = { :page_size => "A4",
              :page_layout => :portrait,
              :margin      => [40, 75]
            }
            # Configurando Retorno
            #receiver_title = "Sr"
            holder = ENV["NOME_OM"]
            holder_historic = ENV["NOME_HISTORICO_OM"]
            #sender = "Chefe do 4º Centro de Telemática de Área"
            #receiver = "#{receiver_title} Subchefe do Estado-Maior do Comando Militar da Amazônia"
            subject = "Relatório "
            #priority = "<b><font size = 14><color rgb = 'ff0000'>URGENTÍSSIMO</color></font></b>"
            city = ENV["CIDADE_CTCTA"]
            uf = ENV["UF_CTCTA"]
            text__string = "\n 1. Solicito empréstimo de 35 mesas (estilo universitárias, tipicamente usadas " +
            "nas operações) ao COp CMA, no período de 5 NOV 19 à 15 NOV 19, a serem " +
            "empregadas em proveito da Operação Ricardo Franco (IME), no âmbito do CTA de 11 à " +
            "15 NOV 19." +
            "\n 2. Caso esta OM possua disponibilidade de apoiar o CTA, os militares " +
            "responsáveis pelas tratativas do empréstimo são 2o Sgt Rômulo e 2o Sgt Aníbal, no ramal " +
            "1032."
            image_path = "app/assets/images"
            file_name = nil

            Prawn::Document.new(PDF_OPTIONS) do |pdf|
                pdf.fill_color "000000"
                type_report = "#{@object.class}"

                #pdf.text "#{(Time.now).strftime("%d/%m/%y)}"

                if type_report == "Usuario"
                  needs_table = true
                  needs_text = false
                  @name = @object.name
                  @grad = @object.hierarq.name
                  #if @object.sexo.include?("Fem")
                  #    of = "da"
                  #    else
                  #    of = "do"
                  #    end
                  subject = "Perfil Profissional #{@grad} #{@name}"
                  data = []
                  header = [["Posto/Graduação","#{@grad}"],["Nome", "#{@name}"]]
                  data += header
                  if @object.telefone
                    variable_name = "Telefone"
                    @value = @object.telefone
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.email
                    variable_name = "Email"
                    @value = @object.email
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.formacao_mils.count > 0
                    variable_name = "Formação(ões) Militar(es)"
                    value = ""
                    counter = @object.formacao_mils.count + 1
                    counting = 1
                    @object.formacao_mils.each do |var|
                      if counting == 1
                      value += "#{var.name}"
                      counting += 1
                    elsif counting < counter
                        counting += 1
                        value +=", #{var.name}"
                      end
                    end
                    data += [["#{variable_name}","#{value}"]]
                  end
                  if @object.formacao_acads.count > 0
                    variable_name = "Formação(ões) Acadêmica(s)"
                    value = ""
                    counter = @object.formacao_acads.count + 1
                    counting = 1
                    @object.formacao_acads.each do |var|
                      if counting == 1
                      value += "#{var.name}"
                      counting += 1
                    elsif counting < counter
                        counting += 1
                        value +=", #{var.name}"
                      end
                    end
                    data += [["#{variable_name}","#{value}"]]
                  end
                  if @object.cpf
                    variable_name = "CPF"
                    @value = @object.cpf
                    unless "#{@value}" == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.cliente
                    variable_name = "Cliente(s)"
                    @value = @object.cliente.name
                    data += [["#{variable_name}","#{@value}"]]
                  end
                  if @object.idtmil
                    variable_name = "Identidade Militar"
                    @value = @object.idtmil
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.cargos_exercidos
                    variable_name = "Cargo(s) Exercido(s)"
                    @value = @object.cargos_exercidos
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.projetos_que_participou
                    variable_name = "Projeto(s) de TI que Participou"
                    @value = @object.projetos_que_participou
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end

                  if @object.idiomas.count > 0
                    variable_name = "Idiomas"
                    value = ""
                    counter = @object.idiomas.count + 1
                    counting = 1
                    @object.idiomas.each do |var|
                      if counting == 1
                      value += "#{var.name}"
                      counting += 1
                    elsif counting < counter
                        counting += 1
                        value +=", #{var.name}"
                      end
                    end
                    data += [["#{variable_name}","#{value}"]]
                  end
                  if @object.habilidades.count > 0
                    variable_name = "Habilidades"
                    value = ""
                    counter = @object.habilidades.count + 1
                    counting = 1
                    @object.habilidades.each do |var|
                      if counting == 1
                      value += "#{var.name}"
                      counting += 1
                    elsif counting < counter
                        counting += 1
                        value +=", #{var.name}"
                      end
                    end
                    data += [["#{variable_name}","#{value}"]]
                  end
                  if @object.cert_tis.count > 0
                    variable_name = "Certificações em TI"
                    value = ""
                    counter = @object.cert_tis.count + 1
                    counting = 1
                    @object.cert_tis.each do |var|
                      if counting == 1
                      value += "#{var.name}"
                      counting += 1
                    elsif counting < counter
                        counting += 1
                        value +=", #{var.name}"
                      end
                    end
                    data += [["#{variable_name}","#{value}"]]
                  end
                  if @object.cursos.count > 0
                    variable_name = "Curso(s)"
                    value = ""
                    counter = @object.cursos.count + 1
                    counting = 1
                    @object.cursos.each do |var|
                      if counting == 1
                      value += "#{var.name}"
                      counting += 1
                    elsif counting < counter
                        counting += 1
                        value +=", #{var.name}"
                      end
                    end
                    data += [["#{variable_name}","#{value}"]]
                  end
                  if @object.cargos.count > 0
                    variable_name = "Cargo(s)"
                    value = ""
                    counter = @object.cargos.count + 1
                    counting = 1
                    @object.cargos.each do |var|
                      if counting == 1
                      value += "#{var.name}"
                      counting += 1
                    elsif counting < counter
                        counting += 1
                        value +=", #{var.name}"
                      end
                    end
                    data += [["#{variable_name}","#{value}"]]
                  end
                elsif type_report == "Cliente"
                  needs_table = true
                  needs_text = false
                  @name = @object.name
                  subject = "Relatório da OM #{@name}"
                  data = []
                  header = [["Nome da OM", "#{@name}"]]
                  data += header
                  if @object.cidade
                    variable_name = "Cidade"
                    @value = @object.cidade.name
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.endereco
                    variable_name = "Endereço"
                    @value = @object.endereco
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.nome_cmt_om
                    variable_name = "Comandante da OM"
                    @value = @object.nome_cmt_om
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.cel_cmt_om
                    variable_name = "Contato do Cmt OM"
                    @value = @object.nome_cmt_om
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.subordinacao
                    variable_name = "Subordinação"
                    @value = @object.subordinacao
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.uasg
                    variable_name = "Unidade Administrativa de Serviços Gerais"
                    @value = @object.uasg
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.missao_fim_om
                    variable_name = "Missão Fim da OM"
                    @value = @object.missao_fim_om
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.efetivo
                    variable_name = "Efetivo aproximado da OM"
                    @value = @object.efetivo
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.anotacoes
                    variable_name = "Observações sobre a OM"
                    @value = @object.anotacoes
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.descricao_posto_radio
                    variable_name = "Descrição do Posto Rádio da RRF do EB"
                    @value = @object.descricao_posto_radio
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.nome_ch_sec_ti
                    variable_name = "Chefe da Seção de TI"
                    @value = @object.nome_ch_sec_ti
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.telefone_ctt_om
                    variable_name = "Telefone de Contato Seç TI da OM"
                    @value = @object.telefone_ctt_om
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.email
                    variable_name = "Email da Seção de TI da OM"
                    @value = @object.email
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.usuarios.count > 0
                    variable_name = "Militar(es) da OM que realizaram curso no CT/CTA"
                    value = ""
                    counter = @object.usuarios.count + 1
                    counting = 1
                    @object.usuarios.each do |var|
                      if counting == 1
                      value += "#{var.name}"
                      counting += 1
                    elsif counting < counter
                        counting += 1
                        value +=", #{var.name}"
                      end
                    end
                    data += [["#{variable_name}","#{value}"]]
                  end
                  # if @object.requisicao_link_proprio
                  #   variable_name = "Possui Link Próprio"
                  #   @value = @object.requisicao_link_proprio.status
                  #   data += [["#{variable_name}","a#{@value}a"]]
                  # end
                  if @object.pacotes_servico
                    variable_name = "Pacote(s) de Serviço"
                    value = ""
                    counter = @object.pacotes_servico
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                elsif type_report == "Cidade"
                  needs_table = true
                  needs_text = false
                  @name = @object.name
                  subject = "Relatório da Cidade #{@name}"
                  data = []
                  header = [["Nome da Cidade", "#{@name}"]]
                  data += header
                  if @object.clientes
                    variable_name = "OMs cadastradas"
                    value = ""
                    counter = @object.clientes.count + 1
                    counting = 1
                    @object.clientes.each do |var|
                      if counting == 1
                      value += "#{var.name}"
                      counting += 1
                    elsif counting < counter
                        counting += 1
                        value +=", #{var.name}"
                      end
                    end
                    data += [["#{variable_name}","#{value}"]]
                  end
                elsif type_report == "Vot"
                  needs_table = true
                  needs_text = false
                  @name = @object.id
                  subject = "Relatório da Vot \##{@name}"
                  data = []
                  header = [["Número da VOT", "#{@name}"]]
                  data += header
                  if @object.cliente
                    variable_name = "Cliente"
                    @value = @object.cliente.name
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.usuarios.count > 0
                    variable_name = "Militar(es) Responsável(eis)"
                    value = ""
                    counter = @object.usuarios.count + 1
                    counting = 1
                    @object.usuarios.each do |var|
                      if counting == 1
                      value += "#{var.name}"
                      counting += 1
                    elsif counting < counter
                        counting += 1
                        value +=", #{var.name}"
                      end
                    end
                    data += [["#{variable_name}","#{value}"]]
                  end
                  if @object.data_inicio
                    variable_name = "Data de Início"
                    @value = @object.data_inicio
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.data_termino
                    variable_name = "Data de Término"
                    @value = @object.data_termino
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.remuneracao
                    variable_name = "Remuneração"
                    @value = @object.remuneracao
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.relatorio
                    variable_name = "Relatório"
                    @value = @object.relatorio
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                  if @object.modo_transporte
                    variable_name = "Modo de Transporte"
                    @value = @object.modo_transporte
                    unless @value == ""
                      data += [["#{variable_name}","#{@value}"]]
                    end
                  end
                end

                pdf.image "#{image_path}/mdindex.png", :position => :center, :height => 80
                pdf.text "MINISTÉRIO DA DEFESA"+
                "\n" + "EXÉRCITO BRASILEIRO" +
                "\n" + "#{holder}" +
                "\n" + "#{holder_historic}", :style => :bold, :size => 10, :align => :center
                pdf.move_down 50
                pdf.text "DIEx S/N", :style => :bold, :size => 12, :align => :left
                pdf.text "EB S/N", :style => :bold, :size => 12, :align => :left
                pdf.move_down 10
                date_current = (Time.now)
                string_date_begin = "#{date_current.strftime("%d de ")}"
                string_date_month = "#{date_current.strftime("%m")}"
                if string_date_month == "01"
                  string_date_month = "janeiro"
                elsif string_date_month == "02"
                  string_date_month = "fevereiro"
                elsif string_date_month == "03"
                  string_date_month = "março"
                elsif string_date_month == "04"
                  string_date_month = "abril"
                elsif string_date_month == "05"
                  string_date_month = "maio"
                elsif string_date_month == "06"
                  string_date_month = "junho"
                elsif string_date_month == "07"
                  string_date_month = "julho"
                elsif string_date_month == "08"
                  string_date_month = "agosto"
                elsif string_date_month == "09"
                  string_date_month = "setembro"
                elsif string_date_month == "10"
                  string_date_month = "outubro"
                elsif string_date_month == "11"
                  string_date_month = "novembro"
                elsif string_date_month == "12"
                  string_date_month = "dezembro"
                end
                string_date_end = "#{date_current.strftime(" de %y")}"
                string_date = string_date_begin + string_date_month + string_date_end
                pdf.text "#{city}, #{uf}, #{string_date}.", :align => :right, :style => :bold, :size => 12
                pdf.move_down 30
                pdf.text "<b>Assunto:</b> #{subject}", :size => 12, :align => :left, :inline_format => true
                pdf.move_down 20

                if needs_table
                  pdf.table(data, :row_colors => ["FFFFFF","CCCCCC"])
                end
                if needs_text
                  pdf.text text__string, :indent_paragraphs => 60
                  pdf.move_down 20
                end
                file_name = "#{@object.class}_#{(Time.now).strftime("%d%H%M%m%y")}"
                # Muda de font para Helvetica
                pdf.font "Helvetica"
                # Inclui um texto com um link clicável (usando a tag link) no bottom da folha do lado esquerdo e coloca uma cor especifica nessa parte (usando a tag color)
                #pdf.text "Link Para o OTRS", :size => 10, :inline_format => true, :valign => :bottom, :align => :left
                # Inclui em baixo da folha do lado direito a data e o némero da página usando a tag page
                pdf.number_pages "Gerado: #{(Time.now).strftime("%d/%m/%y as %H:%M")} - Página ", :start_count_at => 0, :page_filter => :all, :at => [pdf.bounds.right - 140, 7], :align => :right, :size => 8
                # Gera no nosso PDF e coloca na pasta public com o nome agreement.pdf
                pdf.render_file("public/#{file_name}.pdf")
                @filenamepdf = "#{file_name}.pdf"
              end

              File.open("public/#{file_name}.pdf", 'r') do |send_pdf|
                send_data send_pdf.read.force_encoding('BINARY'), :filename => @filenamepdf, :type => "application/pdf", :disposition => "attachment"
              end
              File.delete("public/#{file_name}.pdf")
              #File.delete("public/graph.jpg") if @object.sales.count > 0
            end
          end

          register_instance_option :link_icon do
            'fa fa-file-pdf-o'
          end
        end
      end
    end
  end
