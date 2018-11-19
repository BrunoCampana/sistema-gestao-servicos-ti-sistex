# README

# Funcionalidades do Software

O sistema permite que o usuário agregue às seguintes funcionalidades ao CT ou CTA:
* Gerenciamento de OMs clientes,
* Gerenciamento de perfis profissionais de cargos,
* Gerenciamento de perfis profissionais de militares do CTA,
* Gerenciamento de pacotes de serviço de TI,
* Gerenciamento de requisição de links próprios por OMs clientes,
* Registro de viagens de apoio logístico de TI (Valti)
* Registro de indisponibilidade de serviços de TI
* Gerenciamento de fornecedores
* Gerenciamento de capacitação de recursos humanos
* Gerenciamento de acordos de nível de serviço
* Gerenciamento da relação entre cargos, encargos técnicos e militares do CTA

# Requisitos do Hardware

*  2 cores de processamento,
*  4 GB de RAM,
*  100 GB de armazenamento;

# Tutorial
O sistema utiliza Ruby on Rails em um sevidor Ubuntu 16.04 LTS Xenial Xerus. A versão do Ruby é a 2.5.1 e, inicialmente, deve ser instalado o Node.js e o Yarn através dos seguintes comandos.

```sh
$ curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
$ curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
$ echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

$ sudo apt-get update
$ sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
```
A instalação do Ruby será feita nesse tutorial utilizando o rbenv seguindo os comandos:

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
$ ruby -v
```
Após isso o Bundler e o Rails devem ser instalados

```sh
$ gem install bundler
$ rbenv rehash
$ gem install rails
```

Acesse a pasta baixada do projeto e utilize o Bundle para instalar todas as gemas

```sh
$ bundle install
```

Por fim o banco de dados deve ser criado

```sh
$ rake db: create
$ rake db: migrate
$ rake db: seed
```

Então o serviço pode ser iniciado através do comando. Por default, a porta utilizada 

```sh
$ rails server 
```

