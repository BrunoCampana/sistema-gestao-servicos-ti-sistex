RailsAdmin.config do |config|

  require Rails.root.join('lib', 'rails_admin', 'rails_admin_pdf.rb')
  RailsAdmin::Config::Actions.register(RailsAdmin::Config::Actions::Pdf)

  config.compact_show_view = false
  #config.sidescroll = true

  config.model Usuario do
    navigation_label 'Recursos Humanos do CT/CTA'
    weight (-15)
    edit do
      field :nome do
        help 'Insira o nome de guerra apenas com letras maiúsculas. Ex: NEWTON'
      end
      field :hierarq
      field :nome_completo do
        help  'Insira o nome completo apenas com letras maiúsculas. Ex: STEPHEN HAWKING'
      end
      field :situacao
      field :telefone do
        help 'Insira somente os 2 digitos do DDD e os 9 dígitos do número. Ex: 929881132200'
      end
      field :email do
        help 'Insira somente um email que o profissional realmente acesse. Ex: meunome@gmail.com'
      end
      field :cliente
      field :observacoes do
        help 'Insira aqui quaisquer observações relevante sobre o profissional.'
      end
      field :formacao_mil do
        help 'Selecione todas as formações que o profissional possuir.'
      end
      field :formacao_acad do
        help 'Selecione todas as formações que o profissional possuir.'
      end
      field :idtmil do
        help 'Insira somente os 10 dígitos que compõe. Ex: 0100775553'
      end
      field :cpf do
        help 'Insira somente os 11 dígitos que compõe. Ex: 11122233344'
      end
      field :cargos do
        help 'Selecione todos os cargos que o militar ocupa. O sistema não permite que dois militares ocupem o mesmo cargo.'
      end
      field :encargos do
        help 'Selecione todos os encargos que o profissional possui. Exemplo: Of TFM, Of Tiro, etc.'
      end
      field :idiomas do
        help 'Selecione todas as habilidades em idiomas que o profissional possui.'
      end
      field :cert_tis do
        help 'Selecione apenas certificações nas quais o profissional tenha sido aprovado em exame validado por instituição reconhecida.'
      end
      field :cursos do
        help 'Selecione todos os cursos que o militar realizou na área de TI.'
      end
      field :habilidades do
        help 'Selecone todas as habilidades que TI que o militar possui.'
      end
      field :cargos_exercidos do
        help 'Descreva todos os cargos de TI que o profissional exerceu. Ex: Gerente de Sv TI: 2018-2019 em Vivo'
      end
      field :projetos_que_participou do
        help 'Descreva todos os projetos de TI que o profissional participou. Ex: Projeto de Moving do Datacenter Suframa: 2018.'
      end
    end
    list do
      sort_by :hierarq_id
      sort_reverse true
      field :id
      field :hierarq
      field :nome
      field :situacao
      field :email
      field :telefone
    end
    show do
      field :nome
      field :nome_completo
      field :hierarq
      field :situacao
      field :telefone
      field :email
      field :cliente
      include_all_fields
    end
  end

  config.model Hierarq do
    parent Usuario
    weight (-14.9)
    edit do
      field :nome do
        help 'Antes de cadastrar um novo Grau Hierárquico, verifique se o mesmo já existe na base de dados.'
      end
    end
    list do
      sort_reverse false
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model FormacaoMil do
    parent Usuario
    weight (-14.8)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
    edit do
      field :nome do
        help 'Antes de cadastrar uma nova Formação Militar, verifique se a mesma já existe na base de dados.'
      end
    end
  end

  config.model FormacaoAcad do
    parent Usuario
    weight (-14.75)
    list do
      sort_reverse false
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
    edit do
      field :nome do
        help 'Antes de cadastrar uma nova Formação Militar, verifique se a mesma já existe na base de dados.'
      end
    end
  end

  config.model CertTi do
    parent Usuario
    weight (-14.7)
    list do
      sort_reverse false
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
    edit do
      field :nome do
        help 'Antes de cadastrar uma nova Certificação de TI, verifique se a mesma já existe na base de dados.'
      end
    end
  end

  config.model Curso do
    parent Usuario
    weight (-14.6)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
    edit do
      field :nome do
        help 'Antes de cadastrar um novo Curso, verifique se o mesmo já existe na base de dados.'
      end
    end
  end

  config.model Idioma do
    parent Usuario
    weight (-14.3)
    list do
      sort_reverse false
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
    edit do
      field :nome do
        help 'Antes de cadastrar nova habilidade em Idiomas, verifique se não existe equivalente a mesma na base de dados.'
      end
    end
  end

  config.model Cargo do
    parent Usuario
    weight (-14)
    list do
      sort_reverse false
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
    edit do
      field :nome do
        help 'Antes de cadastrar um novo cargo, certifique-se que o mesmo não possui equivalente na base de dados.'
      end
    end
  end

  config.model Habilidade do
    parent Usuario
    weight (-12)
    list do
      sort_reverse false
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
    edit do
      field :nome do
        help 'Antes de cadastrar nova Habilidade, certifique-se de que não existe equivalente na base de dados.'
      end
    end
  end

  config.model Encargo do
    parent Usuario
    weight (-11.9)
    list do
      sort_reverse false
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
    edit do
      field :nome do
        help 'Antes de cadastrar novo Encargo, certifique-se de que não existe equivalente na base de dados.'
      end
    end
  end

  config.model CursoMinistrado do
    navigation_label 'Capacitação de TI'
    weight (-11.8)
    list do
      sort_reverse true
      field :id
      field :nome
      field :inicio
      field :termino
      field :carga_horaria
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
    edit do
      field :nome do
        help 'Dê um nome seguindo exatamente o padrão do exemplo a seguir: Estágio Básico de Segurança da Informação - OUT 19'
      end
      field :modalidade
      field :carga_horaria
      field :area_conhecimento do
        help 'Ex: Segurança da Informação.'
      end
      field :descricao_conhecimento do
        help 'Ex: O curso visa preparar os militares das Seç TI das OMs clientes a empregar princípios de Seg Info.'
      end
      field :inicio
      field :termino
      field :pladis do
        help 'Faça upload de arquivos e imagens do curso tais como: fotos do curso, ementa e apresentação de slides.'
      end
      field :tipo_cpc
      include_all_fields
    end
  end

  config.model Talento do
    parent CursoMinistrado
    weight (-11.7)
    list do
      field :id
      field :hierarq
      field :nome
      field :cliente
      field :telefone
      field :email
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
    edit do
      field :nome do
        help 'Insira posto/graduação e nome completo com nome de guerra maiúsculo. Ex: Sd Leonardo di ser Piero DA VINCI.'
      end
      field :email do
        help 'Insira o email que o militar mais use, seja o profissional ou pessoal.'
      end
      field :telefone do
        help 'Insira somente os 2 dígitos do DDD e os 9 dígitos do número. Ex: 92988776644'
      end
      field :observacoes do
        help 'Insira observações sobre o desempenho do militar durante o curso que o mesmo realizou no CT/CTA.'
      end
      field :cliente do
        help 'Selecione a OM a que pertence o militar.'
      end
      field :hierarq
      field :habilidades
      field :formacao_mil
      field :formacao_acad
    end
  end

  config.model CursoExterno do
    navigation_label 'Capacitação de TI'
    weight (-11.6)
    list do
      sort_reverse true
      field :nome do
        help 'Ex: Ferramentas de Monitoramento C.A.'
      end
      field :modalidade
      field :inicio
      field :termino
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
    edit do
      field :nome
      field :modalidade
      field :carga_horaria
      field :descricao do
        help 'Use este campo para descrever o objetivo do curso e a empregabilidade dele no CT/CTA.'
      end
      field :inicio
      field :termino
      field :certificado_conclusao do
        help 'Insira os certificados de conclusão dos profissionais do CT/CTA que realizaram a capacitação.'
      end
      field :curso_concluido
      field :conclusao_checada
      field :custo do
        help 'Insira o custo total (somando todos os alunos) do curso, conforme exemplo: 1999,99'
      end
      field :org_aplicadora do
        help 'Ex: Dígitro.'
      end
      field :usuarios do
        help 'Selecione todos os profissionais do CT/CTA que realizaram a capacitação externa (fora do CT/CTA) em questão.'
      end
    end
  end

  config.model Cliente do
    navigation_label 'Tudo sobre OMs Clientes'
    weight (-11)
    list do
      sort_reverse false
      field :id
      field :nome
      field :cidade
      field :telefone_ctt_om
      field :nome_ch_sec_ti
      field :email
    end
    edit do
      field :nome do
        help 'Insira o nome da OM por extenso. Ex: Instituto Militar de Engenharia'
      end
      field :cidade do
        help 'Selecione a cidade onde encontra-se a OM.'
      end
      field :endereco do
        help 'Insira como no exemplo a seguir: Avenida Coronel Teixeira, 4715, Manaus-AM, cep: 69037-000'
      end
      field :subordinacao do
        help 'Redija o escalão superior da OM.'
      end
      field :uasg do
        help 'Somente OMs com autonomia administrativa possuem código UASG.Exemplo: 160016 (Cmdo do CMA)'
      end
      field :missao_fim_om do
        help 'Descrição sucinta da missão fim da OM. Ex: Prover Serviços de TI para as OMs do CMA.'
      end
      field :efetivo do
        help 'Insira o efetivo de militares APROXIMADO da OM (importante para o dimensionamento de recursos de Logística de TI).'
      end
      field :telefone_ctt_om do
        help 'Insira somente os dois dígitos do DDD e 9 dígitos do número. Ex: 92988776644'
      end
      field :email do
        help 'Insira email em que de fato seja possível entrar em contato com Seção de TI da OM.'
      end
      field :anotacoes do
        help 'Espaço reservado para anotações diversas sobre a OM.'
      end
      field :inventario do
        help 'Faça upload de arquivo único contendo todas as informações relevantes sobre a OM.'
      end
      field :nome_ch_sec_ti do
        help 'Insira conforme o exemplo a seguir: 3º Sgt Marcos.'
      end
      field :nome_cmt_om do
        help 'Insira conforme o exemplo a seguir: Cel Luís.'
      end
      field :cel_cmt_om do
        help 'Insira somente dígitos do ramal funcional do secretário direto do Cmt/Ch/Dir da OM. Ex: 8601080'
      end
      field :possui_posto_radio
      field :descricao_posto_radio do
        help 'Descreva o tipo de antena, marca/modelo dos equipamentos rádios, qtd dos eqp rádio, etc.'
      end
      field :qtd_operadores_radio do
        help 'Insira a quantidade de militares cujo cargo na OM é a operação do posto-rádio.'
      end
      field :tipo do
        help 'Selecione se a OM é ou não cliente do CT/CTA.'
      end
    end
    show do
      field :nome
      field :cidade
      field :telefone_ctt_om
      field :nome_ch_sec_ti
      field :email
      field :nome_cmt_om
      field :cel_cmt_om
      field :requisicao_link_proprio
      include_all_fields
    end
  end

  config.model Cidade do
    parent Cliente
    weight (-10)
    list do
      sort_reverse true
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
    edit do
      field :nome do
        help 'Insira o nome da cidade e sigla do estado, conforme exemplo a seguir: Rio de Janeiro - RJ.'
      end
    end
  end

  config.model RequisicaoLinkProprio do
    parent Cliente
    weight (-8)
    show do
      field :cliente
      field :descricao
      field :possui_link_proprio
      field :data_inicio_contrato
      field :data_termino_contrato
      field :parecer_cta
      field :parecer_citex
      field :inicio_parecer
      field :validade_parecer
      field :valor_mensal
      include_all_fields
    end
    list do
      sort_reverse true
      field :id
      field :cliente
      field :possui_link_proprio
      field :parecer_cta
      field :parecer_citex
      field :descricao
    end
    edit do
      field :cliente do
        help 'Selecione a OM que requisitou o parecer.'
      end
      field :status
      field :possui_link_proprio do
        help 'Selecione se a OM possui contrato de link próprio corrente.'
      end
      field :velocidade
      field :prestador_sv do
        help 'Insira o nome da empresa contratada pela OM conforme exemplo a seguir: Embratel S.A.'
      end
      field :enlace do
        help 'Selecione como é provido o serviço extra atual (caso houver).'
      end
      field :data_inicio_contrato do
        help 'Selecione a data em que iniciou o contrato atual (se houver) de link próprio de internet da OM cliente.'
      end
      field :data_termino_contrato do
        help 'Selecione a data em que terminará o contrato atual (se houver) de link próprio de internet da OM cliente.'
      end
      field :valor_mensal do
        help 'Insira o valor pago mensalmente pela OM, exatamente conforme exemplo a seguir: 1999,99'
      end
      field :origem_recurso do
        help 'Redija o nome da Ação de liberação de recurso provido pela DGO ou outro órgão. Ex: DGO - Ação 2000.'
      end
      field :parecer do
        help 'Faça upload do arquivo digital com o parecer exarado pelo CT/CTA em resposta à requisição da OM.'
      end
      field :parecer_cta do
        help 'Selecione o status do parecer exarado pelo CT/CTA.'
      end
      field :parecer_citex do
        help 'Selecione o status o parecer exarado pelo CITEx.'
      end
      field :status do
        help 'Redija a descrição sucinta da requisição para futura consulta, conforme exemplo a seguir: Parecer Negativo para 6º BIS MAR 19.'
      end
      field :descricao do
        help 'Use este campo para descrever se necessário, os motivos e observações pertinentes sobre o parecer.'
      end
      field :inicio_parecer do
        help 'Selecione a data de vigência do parecer. O parecer terá validade até que seja remetido outro parecer negativo (validade indeterminada).'
      end
    end
  end

  config.model PacotesServico do
    parent Cliente
    weight (-9)
    list do
      sort_reverse false
      field :id
      field :cliente
      field :velocidade_intranet
      field :velocidade_internet
      field :ramal_ritex
      field :ramal_voip
    end
    show do
      field :cliente
      field :velocidade_intranet
      field :velocidade_internet
      field :meio_de_acesso
      field :tipo_link
      field :tipo_banda
      field :qtd_partilham
      field :latencia
      field :jitter
      field :disponibilidade
      field :link_proprio
      field :ramal_ritex
      field :ramal_voip
      field :servicos
      field :vpns
      include_all_fields
    end
    edit do
      field :cliente do
        help 'Selecione a OM dona do pacote de serviços.'
      end
      field :servicos do
        help 'Selecione os Serviços de TI incluídos neste pacote.'
      end
      field :velocidade_intranet do
        help 'Insira a velocidade em Mbps fornecida pela CT/CTA.'
      end
      field :velocidade_internet do
        help 'Insira a velocidade em Mbps fornecida pela CT/CTA.'
      end
      field :meio_de_acesso do
        help 'Selecione a forma pela qual a OM recebe os serviços de TI do CT/CTA.'
      end
      field :tipo_link do
        help 'Selecione o tipo de link que a OM cliente recebe.'
      end
      field :latencia do
        help 'Insira se necessário a latência média que o enlace deverá possuir (definido pelo CITEx ou CT/CTA mediante contrato com operadoras, etc).'
      end
      field :jitter do
        help 'Insira se necessário o Jitter média que o enlace deverá possuir (definido pelo CITEx ou CT/CTA mediante contrato com operadoras, etc).'
      end
      field :disponibilidade do
        help 'Insira se necessário a disponibilidade média que o enlace deverá possuir (definido pelo CITEx ou CT/CTA mediante contrato com operadoras, etc).'
      end
      field :link_proprio do
        help 'Selecione se a OM possui ou não link próprio (fins de controle junto ao CITEx).'
      end
      field :qtd_partilham do
        help 'Insira o número que corresponde a quantidade de OMs que partilham o mesmo enlace de dados. Ex: em determinada cidade há 10 OMs todas numa Rede Metropolitana compartilhando dois enlaces (lembre-se que pelotões PE, Pel Com, Cias de Cmdo são contabilizadas como OMs separadas).'
      end
      field :obs_dados do
        help 'Insira observações que forem relevantes sobre o serviço de dados da OM cliente.'
      end
      field :ramal_ritex do
        help 'Insira a quantidade de ramais de voz convencionais de telefonia corporativa (RITEx) a OM possui.'
      end
      field :ramal_voip do
        help 'Insira a quantidade de ramais de voz sobre IP (VoIP) de telefonia corporativa (RITEx) a OM possui.'
      end
      field :obs_tel do
        help 'Insira observações que forem relevantes sobre o serviço de telefonia da OM cliente.'
      end
      field :ans_tis do
        help 'Selecione todos os Acordos de Nível de Serviço que a OM possui assinados com o CT/CTA.'
      end
    end
  end

  config.model Vot do
    parent Cliente
    weight (-7)
    list do
      sort_reverse true
      field :id
      field :cliente
      field :data_inicio
      field :data_termino
      field :descricao
      field :usuarios
    end
    show do
      field :cliente
      field :titulo
      field :data_inicio
      field :data_termino
      field :descricao
      include_all_fields
    end
    edit do
      field :titulo do
        help 'Dê um título à VOT de modo à diferenciá-la para fins de pesquisa futura. Ex: Visita para Auditoria de Segurança da Informação JAN 19.'
      end
      field :cliente do
        help 'Selecione o nome da OM na qual ocorreu a VOT. Lembre-se: uma VOT só pode ter ocorrido em uma única OM. Se você foi em duas OMs foram duas VOTS!'
      end
      field :data_inicio
      field :data_termino do
        help 'Lembre-se que uma mesma viagem à uma cidade pode conter várias VOTs.'
      end
      field :descricao
      field :usuarios do
        help 'Selecione os militares que participaram da VOT.'
      end
      field :modo_transporte
      field :remuneracao do
        help 'Quando a VOT ocorrer fora da Gu do CT/CTA o militar fará jus à diárias ou gratificação de representação. Descreva como ocorrerá a remuneração da viagem em questão (se for o caso).'
      end
      field :pagamentos_realizados
      field :relatorio do
        help 'Insira os arquivos e imagens produzidos na VOT.'
      end
    end
  end

  config.model Vpn do
    parent PacotesServico
    weight (-6.5)
    show do
      include_all_fields
    end
    list do
      sort_reverse true
      field :cliente
      field :dono_da_conta
    end
  end

  config.model Servico do
    navigation_label 'Serviços de TI'
    weight (-6)
    list do
      sort_reverse false
      field :id
      field :nome
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
    edit do
      field :nome do
        help 'Insira o nome do serviço de TI prestado conforme consta no Catálogo de Serviços do SisTEx. Certifique-se de que o serviço já não encontra-se cadastrado antes de criar um novo!'
      end
    end
  end

  config.model AnsTi do
    parent Servico
    weight (-5)
    list do
      sort_reverse true
      field :cliente
      field :titulo
      field :vigencia
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
    show do
      field :cliente
      field :titulo
      field :vigencia
      include_all_fields
    end
    edit do
      field :cliente
      field :titulo do
        help 'Dê um título que permita a rápida identificação do ANS. Ex: Hospedagem de Página de Internet e Hospedagem de Serviço Regional.'
      end
      field :servicos do
        help 'Selecione todos os serviços contemplados no ANS.'
      end
      field :vigencia
      field :contrato do
        help 'Faça upload do documento contendo os termos do ANS.'
      end
      field :pacotes_servico
      field :descricao do
        help 'Use este campo textual para detalhes que julgar que cabe ressaltar sobre o ANS em questão.'
      end
    end
  end

  config.model Indisponibilidade do
    parent Servico
    weight (-4)
    show do
      field :clientes
      field :inicio
      field :termino
      field :servicos
      include_all_fields
    end
    list do
      sort_reverse true
      field :servicos
      field :clientes
      field :inicio
      field :termino
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
    edit do
      field :servicos do
        help 'Selecione todos os serviços que foram afetados pela indisponibilidade.'
      end
      field :clientes do
        help 'Selecione todos os clientes que foram afetados pela indisponibilidade.'
      end
      field :inicio do
        help 'Selecione a data e horário de início da indisponibilidade.'
      end
      field :termino do
        help 'Selecione a data e horário de término da indisponibilidade.'
      end
      field :tipo do
        help 'Selecione se a indisponibilidade comprometeu serviços inteiros ou somente componentes internos importantes (mas sem comprometer a prestação do serviço, ex: queda de luz da concessionária com gerador como backup).'
      end
      field :observacoes do
        help 'Insira quaisquer observações relevantes sobre a indisponibilidade, inclusive as ações tomadas para mitigação e reparação (registro pode ser útil no futuro).'
      end
      field :parados do
        help 'Selecione caso seja de conhecimento, quais componentes tiveram seu funcionamento comprometido.'
      end
      field :motivos do
        help 'Selecione caso seja de conhecimento, quais as causas do comprometimento dos componentes.'
      end
    end
  end

  config.model Parado do
    parent Servico
    weight (-3)
    list do
      sort_reverse false
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
    edit do
      field :nome do
        help 'Antes de criar um novo elemento, certifique-se de que já não existe o elemento que deseja criar ou equivalente com outro nome.'
      end
    end
  end

  config.model Motivo do
    parent Servico
    weight (-2.9)

    list do
      sort_reverse false
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
    edit do
      field :nome do
        help 'Antes de criar uma nova causa, certifique-se de que já não existe a causa que deseja criar ou equivalente com outro nome.'
      end
    end
  end

  config.model Capacidade do
    parent Servico
    weight (-2.8)
    list do
      sort_reverse true
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
    edit do
      field :nome_recurso do
        help 'O nome do recurso deverá descrever o quê ele significa. Ex: Enlace de Internet e EBNet do Backbone de Integração Manaus - Brasília.'
      end
      field :total_recurso do
        help 'O total quantitativo do recurso conforme unidade de medida do recurso.'
      end
      field :empregado do
        help 'O total quantitativo do recurso já empregado até o presente momento na prestação de serviços.'
      end
      field :servicos do
        help 'Selecione todos os serviços de TI que utilizam diretamente o recurso para funcionar.'
      end
    end
  end

  config.model Fornecedor do
    parent Servico
    weight (-2.7)
    list do
      sort_reverse true
      field :id
      field :nome_fornecedor
      field :descricao_recurso
      field :preposto
      field :fisc_titulars
      field :tels_ctt
    end
    edit do
      field :nome_fornecedor do
        help 'Ex: Amazonas Energia S.A.'
      end
      field :descricao_recurso do
        help 'Ex: Aluguel de Posteamento da REME de Porto Velho.'
      end
      field :codigo_contrato
      field :situacao
      field :inicio_contrato do
        help 'Insira a data de início de vigência do contrato.'
      end
      field :termino_contrato do
        help 'Insira a data de término de vigência do contrato.'
      end
      field :contrato
      field :proposto do
        help 'Insira o nome e cargo do preposto da contratada (preposto é o profissional responsável por prestar assistência ao CT/CTA sobre o contrato, um gerente de conta).'
      end
      field :tels_ctt
      field :emails_ctt
      field :observacoes do
        help 'Insira observações pertinentes sobre este contrato.'
      end
      field :servicos
      include_all_fields
    end
  end

  config.model Rede do
    navigation_label 'Configuração dos Ativos de TI'
    weight (-0.9)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Sleqp do
    parent Rede
    weight (-0.8)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Armario do
    parent Rede
    weight (-0.75)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Hardware do
    parent Rede
    weight (-0.7)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Vm do
    parent Rede
    weight (-0.66)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Software do
    parent Rede
    weight (-0.65)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Equipamento do
    parent Rede
    weight (-0.6)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Mudanca do
    parent Rede
    weight (-0.5)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Workstation do
    parent Rede
    weight (-0.4)
    list do
      field :id
      field :nome
      field :responsavel
      field :modelo
      field :fabricante
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Acesso do
    navigation_label 'Administração do App'
    weight (0)
    exclude_fields :reset_password_token, :unlock_token
  end

  config.excluded_models = ["ActiveStorage", "Attachment", "Blob"]

  config.main_app_name = ENV["NOME_SISTEMA_E_OM"]
  #
  config.navigation_static_links = {

  'Repositório do Código-Fonte do Aplicativo' => 'https://gitlab.com/brunocampana/gsti',

  'Conheça o desenvolvedor do App' =>
  'https://brunocampana.engineer/',

  'Entre em contato com o desenvolvedor' =>
  'https://www.linkedin.com/in/engbrunocampana/',

  'Reportar um problema no Web App' =>
  'https://gitlab.com/brunocampana/gsti/issues'
  }

  config.navigation_static_label = "Links Úteis"

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :acesso
  end
  config.current_user_method(&:current_acesso)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  #config.actions do
  #  #all # NB: comment out this line for RailsAdmin < 0.6.0
  #  charts
  #end

  ## == PaperTrail ==
  config.audit_with :paper_trail, 'Acesso', 'PaperTrail::Version' # PaperTrail >= 3.0.0
  #config.audit_with :paper_trail, 'Acesso', 'Version'

  PAPER_TRAIL_AUDIT_MODEL = ['AnsTi', 'Armario', 'Capacidade', 'Cliente', 'Equipamento', 'Hardware' 'Indisponibilidade', 'Mudanca', 'PacotesServico', 'Rede', 'RequisicaoLinkProprio', 'Software', 'Vm', 'Vot', 'Vpn', 'Workstation']
  config.actions do
    history_index do
      only PAPER_TRAIL_AUDIT_MODEL
    end
    history_show do
      only PAPER_TRAIL_AUDIT_MODEL
    end
  end

  #config.audit_with :history, Usuario
  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    pdf do
      only ['Usuario', 'Cliente', 'Cidade', 'Vot']
    end
    clone
    import
    charts
  end
end

=begin
visible do
  bindings[:view]._current_user.tipo.include?("Admin") || bindings[:view]._current_user.tipo.include?("SecCpc") || bindings[:view]._current_user.id
end
do
  visible do
    bindings[:view]._current_user.tipo.include?("Admin") ||           bindings[:view]._current_user.tipo.include?("SecCpc") || bindings[:view]._current_user.id
  end
=end
