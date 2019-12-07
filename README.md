# README

# Nome

GSTI: Web App de Gestão de Serviços de TI para CTs e CTAs do EB.

# Descrição

O sistema foi concebido no 4º CTA como uma forma de preencher os espaços deixados pelas ferramentas de gestão de informação existentes nos CTs e CTAs. Além das ferramentas tradicionais empregadas por todas as OMs do EB, como SPED, SisBol, servidor de email e arquivos, os CTs e CTAs também usam as ferramentas open source OTRS e Zabbix.

A ferramenta foi toda concebida no padrão de boas práticas ITIL e usando como exemplo ferramentas open source e proprietárias de Gestão de TI.

A intenção não é substituir OTRS e Zabbix, porém complementar tais ferramentas, por meio de um sistema focado nas informações da atividade fim dos CTs e CTAs, permitindo o seguinte:

* **Gerenciamento de perfis profissionais**, permitindo à Seção de Capacitação ter o controle do currículo de TI de cada militar, saber quais já fizeram quais cursos de TI, e servindo de apoio à chefia na seleção dos militares mais adequados a cada cargo e encargo.
* **Gerenciamento das atividades de capacitação interna**, permitindo à Seção de Capacitação ter total controle e registro sobre os cursos internos de TI ministrados pelo CT/CTA aos militares das Seções de Informática das OMs clientes.
* **Gerenciamento das atividades de capacitação externa**, permitindo à Seção de Capacitação ter total controle e registro sobre quais militares foram designados para quais cursos em cada ano.
* **Gerenciamento das OMs clientes**, permitindo que todos os dados de cada OM cliente do CT/CTA estejam reunidos e organizados em um único lugar (quem é o chefe da Seção de TI de determinada OM, quantas VOTs ela recebeu, quais serviços ela usufrui, ela tem link próprio, etc.)
* **Gerenciamento de Pacotes de Serviço de TI**, permitindo que DT e DO conversem facilmente sobre quais são e como são prestados os serviços de TI para cada OM cliente (quantos ramais VoIP a OM tem? E quantos convencionais? E quanto ela recebe de internet? E de EBNet? Etc).
* **Gerenciamento de Contas de VPN**, permitindo à Seção de Segurança da Informação, bem como DT e DO controlar a quantidade de contas de VPN e acessos que existem.
* **Gerenciamento de Links Contratados pelas OM**, para a Seção de Gerência.
* **Gerenciamento de Visitas Técnicas em OMs Clientes**. Normalmente VOTs são registradas apenas no BI interno, o que dificulta sua pesquisa futura. Não mais. Agora será possível saber quando ocorreu a última VOT em determinado cliente, quem foi, quando foi, como foi e quais documentos foram produzidos.
* **Gerenciamento de Serviços de TI prestados**.
* **Gerenciamento dos Acordos de Nível de Serviço**, a serem controlados pela Seção de Gerência da DT.
* **Registro de Indisponibilidades**, possibilitando geração de relatórios de disponibilidade de cada serviço contínuo (internet, EBNet, telefonia, hospedagem e rede-rádio).
* **Gestão de Fornecedores de TI**, facilitando acesso de informações básicas como "quem é mesmo o fiscal daquele contrato? E o substituto? E quem é o preposto da contratada?".
* **Gestão da Capacidade dos Recursos**, permitindo planejamento prévio sobre recursos que estão se esgotando (como espaço em disco, banda de internet, etc).
* **Gestão da Configuração dos Ativos de TI**, permitindo o registro e controle de cada rede, site, rack, hardware e software à cargo do CT/CTA.
* **Gestão de Ativos de LAN**, para que a Seção de Informática do CT/CTA controle a LAN da OM, bem como as estações de trabalho.

# Implantação

## Requisitos de Hardware

Sugere-se máquina virtual com:
*  2 cores de processamento,
*  4 GB de RAM,
*  100 GB de armazenamento.

## Requisitos de Software

O web app foi testado no sistema operacional Ubuntu Server 16.04 LTS.

O web app foi desenvolvido em Ruby on Rails. A versão do Ruby é a 2.5.1.

## Tutorial de Instalação:

#### Primeiro deve-se instalar o Node.js e Yarn:

```sh
$ curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
$ curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
$ echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
```

#### Dependências:

```sh
$ sudo apt-get update
$ sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn patch ruby-dev liblzma-dev
```

Em seguida precisamos instalar o Ruby. A questão é instalar a mesma versão que foi empregada no desenvolvimento do app. No presente momento em que este tutorial foi feito, o comando "apt-get install ruby" já baixava o binário mais recente do que o que precisamos (2.5.1). Dessa forma sugere-se o uso de um pacote chamado "rbenv" (Ruby Environment), de forma que com ele possamos baixar o binário que queremos (2.5.1).

#### A instalação do Ruby será feita nesse tutorial utilizando o rbenv seguindo os comandos:

```sh
$ cd
$ git clone https://github.com/rbenv/rbenv.git ~/.rbenv
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
$ echo 'eval "$(rbenv init -)"' >> ~/.bashrc
$ exec $SHELL

$ git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
$ echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
$ exec $SHELL

$ rbenv install 2.5.1
$ rbenv global 2.5.1
```
#### Confirme que a versão do Ruby que você instalou é realmente a 2.5.1

```sh
$ ruby -v
```

#### Após isso, precisamos clonar o GSTI de seu repositório web oficial no diretório escolhido para instalar o app:

```sh
$ git clone https://gitlab.com/brunocampana/gsti.git
```

#### Após isso o Bundler e o Rails devem ser instalados

```sh
$ gem install nokogiri
$ gem install bundler 1.17.1
$ rbenv rehash
$ gem install rails 5.2.1
```

#### Confirme se foram instaladas as versões que precisamos do Rails e Bundler:

```sh
$ rails -v
$ bundler -v
```

#### Acesse o diretório raiz do projeto e utilize o Bundle para instalar todas as gemas (pacotes dependências do nosso web app):

```sh
$ bundle install
```

#### Prepare a base de dados, entrando no diretório raiz do web app e usando os seguintes comandos:

```sh
rake db:create:all
rake db:migrate
```

Caso queira popular já com as cidades, usuários e outros elementos que já sabe que vai com certeza precisar, modifique o arquivo "seed.rb" de acordo com suas necessidades, usando como exemplo o próprio arquivo. O arquivo "seed" irá popular seu banco de dados de acordo com sua necessidade. É também no arquivo de seed.rb que são criados os primeiros uruários de acesso ao sistema. O usuário padrão criado tem login "campana@4cta.eb.mil.br" e senha "password".

```sh
rake db:seed
```

#### Configurando o ambiente:

Vá até o diretório raiz do seu web app e crie um arquivo chamado ".env". Nesse arquivo encontrar-se-á a configuração do seu ambiente específico. Copie o texto abaixo e cole em seu arquivo:

```sh
NOME_SISTEMA_E_OM = Sistema de Gestão de Serviços de TI do 4º CTA

MAIL_USERNAME = insira_aqui_o_email_que_eu_desejo_usar_para_enviar_mensagens_automaticas_@algumcta.eb.mil.br
MAIL_PASSWORD = insira_aqui_a_senha_do_email_que_eu_escolhi
SMTP_URL = insira_aqui_o_seu_dominio_de_smtp.4cta.eb.mil.br (exemplo smtp.gmail.com)
MAIL_PORT = 587 (insira aqui a porta para envio de emails)
MAIL_DOMAIN = example.com
MAILER_URL = localhost:3000 (insira aqui quem está enviando. Exemplo: gsti.4cta.eb.mil.br:3000)

NOME_OM = 4º CENTRO DE TELEMÁTICA DE ÁREA
NOME_HISTORICO_OM = (Centro de Processamento de Dados n° 5/1978)
CIDADE_CTCTA = Manaus
UF_CTCTA = AM

```

#### Configurando o servidor:

Tendo em vista o baixo número de usuários que o sistema terá (no máximo todos os oficiais e praças de um CT/CTA), não há necessidade da configuração de um servidor web e proxy reverso, tais como Apache2, Nginx, Passenger e outros. Usaremos apenas o servidor de aplicativos "Puma".

O "Puma", para um baixo número de usuários deverá dar conta do recado. Vamos apenas configurar para que caso ocorra reboot do servidor, ele reinicie sozinho. Faremos isso criando um cronjob:

```sh

#Crie no diretório home/nome_do_seu_usuario o arquivo vazio "crontaberror.txt"

$ crontab -e

#insira no arquivo crontab a linha abaixo:
@reboot /bin/bash -l -c 'cd /home/suporte/gsti && /root/.rbenv/shims/rails server' >> /home/suporte/crontaberror.txt 2>&1

# lembre-se de substituir "/home/suporte/gsti" pelo caminho onde você instalou seu app e "/root/.rbenv/shims/rails" pelo caminho onde você instalou seu rails.
```

Agora finalmente, entre no diretório raiz do seu webapp e vamos iniciar a executar o servidor:
```sh
rails server
```

Vá até o navegador e verifique se está funcionando:

Se você instalou em seu desktop local use: localhost:3000
Se você instalou já no servidor use: IP-do-meu-servidor:3000

Pro fim, verifique se seu cronjob está de fato funcionando, reerguendo o servidor Puma automaticamente ao reiniciar a VM:
```sh
$ reboot
```

Caso precise parar de executar o servidor Puma com o GSTI, é necessário matar o processo manualmente:
```sh
$ ps -ef
# identifique um processo com a etiqueta [gsti] e veja qual o número do processo (PID).
# em seguida mate-o
$ kill -9 <PID>
```

# Uso

Para o primeiro uso, use o único usuário criado pelo seed padrão:
Login: campana@4cta.eb.mil.br
Senha: password

Cadastre os militares da DO, DT, SSI e SPC e ao criar esses novos usuários, na aba "usuários" quase no fim da barra de menu lateral, você terá a opção de selecionar o "tipo de usário", de acordo com a seção do mesmo, garantindo a este o correto nível de acesso a cada módulo do web app.

# Suporte

Caso tenha problemas e dificuldades com alguma funcionalidade, tratar com brunoramoscampana@gmail.com ou crie uma "issue" no GitLab.

# Futuro

Vislumbra-se principalmente as seguintes funcionalidades no futuro:
- Acesso ao sistema usando usuário e senha da LDAP.
- Integração com o Zabbix via sua API web, puxando para o web app os dados de disponibilidade e ativos do mesmo.
- Integração com OTRS via sua API web, puxando para o web app os dados de tickets do mesmo.
- Criação de gráficos de disponibilidade usando os dados do OTRS e principalmente Zabbix automaticamente.
- Geração de todos os relatórios de métricas do SisTEx automaticamente.

# Contribuição

Caso integrantes do EB, em especial do SisTEx queiram tornar-se contribuidores oficiais deste software open source, favor entrar em contato via email em brunoramoscampana@gmail.com ou em meu linkedin: [https://www.linkedin.com/in/engbrunocampana/](https://www.linkedin.com/in/engbrunocampana/) .

# Autor e Reconhecimentos

Esse software open source foi desenvolvido por Bruno Campana, engenheiro militar de computação do Exército, entre 2018 e 2019, quando o mesmo era capitão e servia no 4º CTA, Manaus. Maiores informações do desenvolvedor podem ser obtidas em seu website pessoal [https://brunocampana.engineer/](https://brunocampana.engineer/).

Colaboraram com o desenvolvimento desta ferramenta os tenentes do 5º ano do IME Braida, Pedro Igor, Rodrigo Lemos e Façanha, por ocasião de sua ORF em 2018 e os tenentes do 5º ano do IME Cawai, Hipólito, Davi Albuquerque e De Souza, por ocasião de sua ORF em 2019.

# Licença

Open Source, conforme licença que consta no diretório raiz do projeto.

# Status do Projeto

O projeto segue mantido pelo desenvolvedor.
