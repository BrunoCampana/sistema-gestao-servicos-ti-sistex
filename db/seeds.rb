# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Criando nossos Users --- OBS: Depois que adicionarmos o devise precisamos incluir o email e senha dos users
a = Cidade.create!([{nome: 'Manaus'}])

Cidade.create! nome: 'Assis Brasil - AC'

Cidade.create! nome: 'Auaris - RR'

Cidade.create! nome: 'Barcelos'

#Cidade.create! nome: 'Boa Vista - RR'

Cidade.create! nome: 'Bomfim - RR'

#Cidade.create! nome: 'Cruzeiro do Sul - AC'

Cidade.create! nome: 'Cucuí - AM'

Cidade.create! nome: 'Epitacolandia - AC'

Cidade.create! nome: 'Estirão do Equador - AM'

Cidade.create! nome: 'Guajará Mirin - RO'

#Cidade.create! nome: 'Humaitá - AM'

Cidade.create! nome: 'Ipiranga - AM'

Cidade.create! nome: 'Maturacá - AM'

Cidade.create! nome: 'Marechal Thaumaturgo - AC'

#Cidade.create! nome: 'Manaus - AM'

Cidade.create! nome: 'Manicoré - AM'

Cidade.create! nome: 'Normandia - RR'

Cidade.create! nome: 'Pacaraima - RR'

Cidade.create! nome: 'Palmeira do Javari - AM'

Cidade.create! nome: 'Pari-cachoera - AM'

Cidade.create! nome: 'Plácido de Castro - AC'

#Cidade.create! nome: 'Porto Velho - RR'

Cidade.create! nome: 'Principe da Beira - RO'

Cidade.create! nome: 'Querari - AM'

#Cidade.create! nome: 'Rio Branco - AC'

Cidade.create! nome: 'Santa Rosa da Cachoeira - AM'

#Cidade.create! nome: 'São Gabriel da Cachoeira - AM'

Cidade.create! nome: 'São joaquim - AM'

Cidade.create! nome: 'São Salvador - AC'

Cidade.create! nome: 'Surucucu - RR'

#Cidade.create! nome: 'Tabatinga- AM'

#Cidade.create! nome: 'Tefé - AM'

Cidade.create! nome: 'Tunuí - AM'

Cidade.create! nome: 'Uiramutã - RR'

Cidade.create! nome: 'Vila Bitencourt - AM'

Cidade.create! nome: 'Vilhena - RO'

Cidade.create! nome: 'Yauaretê - AM'

Cidade.create! nome: 'Maturacá - AM'

Cidade.create! nome: 'Marechal Thaumaturgo - AC'

b = Cliente.create!([{nome: '4 CTA', cidade: a.first}])

#Cliente.create! nome: '4º CTA', endereco: '', subordinacao: '', uasg: '',
#missao_fim_om: '', efetivo: '', telefone_ctt_om: '', email: ''

Cliente.create! nome: 'Cmdo CMA', endereco: 'Av Coronel Teixeira, 4715 - Ponta Negra, 69037-000', subordinacao: 'Cmt Ex', uasg: '', cidade: a.first

Cliente.create! nome: '12ª RM', endereco: '', subordinacao: 'Av. Coronel Teixeira - Ponta Negra, 69030-480', uasg: '', cidade: a.first

bb = Cidade.create! nome: 'Boa Vista - RR'

Cliente.create! nome: '1ª Bda Inf Sl', endereco: 'Avenida Marquês de Pombal, Quadra 1, s/n - Treze de Setembro, 69308-481', subordinacao: '', uasg: '', cidade: bb

c = Cidade.create! nome: 'São Gabriel da Cachoeira - AM'

Cliente.create! nome: '2ª Bda Inf Sl', endereco: 'Área Militar Capitão Nobuo Oba - S/N -  Cachoeirinha, 69750-000 ', subordinacao: '', uasg: '', cidade: c

d = Cidade.create! nome: 'Tefé - AM'

Cliente.create! nome: '16ª Bda Inf Sl', endereco: 'Estrada do Aeroporto, 4174, Aeroporto, 69308-515', subordinacao: '', uasg: '', cidade: d

e = Cidade.create! nome: 'Porto Velho - RR'

Cliente.create! nome: '17ª Bda Inf Sl', endereco: ' Nr 126, R. Duque de Caxias, 76801-126', subordinacao: '', uasg: '', cidade: e

Cliente.create! nome: '2º GEC', endereco: 'Av. Coronel Teixeira, 5513 - Ponta Negra, 69037-000', subordinacao: '', uasg: '', cidade: a.first

Cliente.create! nome: 'HMAM', endereco: 'Rua Prof. Ernani Simão, Nº 1421, 69065-060', subordinacao: '', uasg: '', cidade: a.first

f = Cidade.create! nome: 'Tabatinga- AM'

Cliente.create! nome: 'HGuT', endereco: ' AV. Da Amizade, 887 - Centro, 69640-000', subordinacao: '', uasg: '', cidade: f

Cliente.create! nome: 'HGuPV', endereco: ' R. Rui Barbosa, 409 - Centro, 76801-010', subordinacao: '', uasg: '', cidade: e

Cliente.create! nome: 'CRO/12', endereco: 'Av. Coronel Teixeira, 2061 - Ponta Negra, 69037-473', subordinacao: '', uasg: '', cidade: a.first

Cliente.create! nome: 'CF RR/7º BIS', endereco: '', subordinacao: '', uasg: '', cidade: bb

Cliente.create! nome: '1º BIS(Amv)', endereco: 'Av. São Jorge, 650 - São Jorge, 69033-000', subordinacao: '', uasg: '', cidade: a.first

Cliente.create! nome: 'CF Sol/8º BIS', endereco: 'Endereço: Praça Colômbia s/n - Bairro: Vila Militar', subordinacao: '', uasg: '',  cidade: f

g = Cidade.create! nome: 'Cruzeiro do Sul - AC'

Cliente.create! nome: '61º BIS', endereco: 'Av. 25 de Agosto, 1252 - Vinte e Cinco de Agosto, 69980-000', subordinacao: '', uasg: '', cidade: g

h = Cidade.create! nome: 'Rio Branco - AC'

Cliente.create! nome: 'CF AC/4º BIS', endereco: 'R. Colômbia, 534 - Bosque, 69909-700', subordinacao: '', uasg: '', cidade: h

Cliente.create! nome: 'Cmdo Fron RO/6º BIS', endereco: 'Av. Cap. Ene Garcês, 1037 - Mecejana, 69304-000', subordinacao: '', uasg: '', cidade: bb

Cliente.create! nome: '17ª BaLog', endereco: 'Av. Pinheiro Machado, 2243 - São Cristóvão', subordinacao: '', uasg: '', cidade: e

Cliente.create! nome: '5º BECnst', endereco: 'Av. Rogerio Weber, 1 - Militar, 78916-050', subordinacao: '', uasg: '', cidade: e

Cliente.create! nome: '6º BECnst', endereco: ' Av. Cap. Ene Garcês, 1037 - Mecejana, 69304-000', subordinacao: '', uasg: '', cidade: bb

Cliente.create! nome: '7º BECnst', endereco: ' Av. Nações Unidas, 2100, 69918-093', subordinacao: '', uasg: '', cidade: h

Cliente.create! nome: '4ª CGeo', endereco: 'R. Mal. Bittencourt - Compensa', subordinacao: '', uasg: '', cidade: a.first

Cliente.create! nome: '12ª ICFEx', endereco: ' Av. Carvalho Leal, 740 - Cachoeirinha, 69065-000', subordinacao: '', uasg: '', cidade: a.first

Cliente.create! nome: '3ª CiaFEsp', endereco: 'Av. Coronel Teixeira - Compensa, 69037-000', subordinacao: '', uasg: '', cidade: a.first

Cliente.create! nome: '61º BIS', endereco: ' Av. 25 de Agosto, 1252 - Vinte e Cinco de Agosto, 69980-000', subordinacao: '', uasg: '', cidade: g

Cliente.create! nome: '29ª CSM', endereco: 'R. Bernardo Ramos, 253 - Centro, 69005-320', subordinacao: '', uasg: '', cidade: a.first

Cliente.create! nome: '31ª CSM', endereco: '', subordinacao: '', uasg: '', cidade: e

Cliente.create! nome: 'CIGS', endereco: 'Av. São Jorge, 750 - São Jorge,  69033-000', subordinacao: 'CMA', uasg: '', cidade: a.first

Cliente.create! nome: '4º BAvEx', endereco: '', subordinacao: 'CMA', uasg: '', cidade: a.first

Cliente.create! nome: '1ª BComSl', endereco: ' Av. Coronel Teixeira, 5345 - Compensa, 69037-000', subordinacao: '', uasg: '', cidade: a.first

Cliente.create! nome: '12º BSup', endereco: '295, Estr. do Bombeamento, 43 - Santo Antônio', subordinacao: '', uasg: '', cidade: a.first

Cliente.create! nome: 'PqRMnt/12', endereco: 'R. Plácido de Castro - Compensa, 69030-480', subordinacao: '', uasg: '', cidade: a.first

Cliente.create! nome: 'CECMA', endereco: 'Estr. da Ponta Negra - Ponta Negra, 69030-480', subordinacao: '', uasg: '', cidade: a.first

Cliente.create! nome: 'HGuSGC', endereco: 'R 7, 250 - Dabaru, 69750-000', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '10º GAC Sl', endereco: '', subordinacao: '', uasg: '', cidade: bb

Cliente.create! nome: '1ª BaLog', endereco: '', subordinacao: '', uasg: '', cidade: bb

Cliente.create! nome: '3º BIS', endereco: ' Av Frei Matias Boa Ventura S/N Bairro: Mariuá, 69.700-000', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '16ª BaLog', endereco: 'Estrada do Aeroporto, n°2801, Aeroporto', subordinacao: '', uasg: '', cidade: d

i = Cidade.create! nome: 'Humaitá - AM'

Cliente.create! nome: '54º BIS', endereco: 'Km 9 da BR 319 - Zona Rural, 69800-000', subordinacao: '', uasg: '', cidade: i

Cliente.create! nome: '17° BIS', endereco: 'r 126, R. Duque de Caxias, 975, 76801-126', subordinacao: '', uasg: '', cidade: e

Cliente.create! nome: '7º BPE', endereco: 'Av. São Jorge - São Jorge, Manaus - AM, 69030-260', subordinacao: '', uasg: '', cidade: a.first

Cliente.create! nome: 'CEF/4º BIS', endereco: '', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '5º BIS', endereco: 'Av. Cap José da Silva Delgado, nº 1761, Bairro Cachoeirinha', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: 'CMM', endereco: 'R. José Clemente, 157 - Centro, Manaus - AM, 69010-070', subordinacao: '', uasg: '', cidade: a.first

Cliente.create! nome: '4ª CiaIntlg', endereco: ' R. Plácido de Castro - Ponta Negra, Manaus - AM, 69030-480', subordinacao: '', uasg: '', cidade: a.first

Cliente.create! nome: 'Cia C 12ªRM', endereco: ' Av. Coronel Teixeira - Ponta Negra, Manaus - AM, 69030-480', subordinacao: '', uasg: '', cidade: a.first

Cliente.create! nome: 'Cia C 1ª Bda Inf Sl', endereco: 'Companhia de Comando da 1ª Brigada de Infantaria de Selva', subordinacao: '', uasg: '', cidade: bb

Cliente.create! nome: '12º Esq C Mec', endereco: '', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '1º Pel Com Sl', endereco: '', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '32º Pel PE', endereco: '', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: 'Cia C 2ª Bda Inf Sl', endereco: 'Cachoeirinha S/N Av. Cap José da Silva Delgado', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '22º Pel PE', endereco: '', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '2º Pel Com Sl', endereco: '', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: 'Cia C 16ª Bda Inf Sl', endereco: '', subordinacao: '', uasg: '', cidade: d

Cliente.create! nome: '16º Pel Com Sl', endereco: 'Estrada do Aeroporto, nº 4174, Aeroporto ', subordinacao: '', uasg: '', cidade: d

Cliente.create! nome: '34º Pel PE', endereco: '', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: 'Cia C 17ª Bda Inf Sl', endereco: 'r 126, R. Duque de Caxias, 975, Porto Velho - RO, 76801-126', subordinacao: '', uasg: '', cidade: e

Cliente.create! nome: '17º Pel Com Sl', endereco: '', subordinacao: '', uasg: '', cidade: e

Cliente.create! nome: '17º Pel PE', endereco: '', subordinacao: '', uasg: '', cidade: e

Cliente.create! nome: '21ª Cia E Cnst', endereco: 'Área Militar Cap Nobuo Oba S/Nr –  Cachoeirinha, 69750-000', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '17º Cia Inf Sl', endereco: '', subordinacao: '', uasg: '', cidade: e

Cliente.create! nome: 'Cia Cmdo CMA', endereco: '', subordinacao: '', uasg: '', cidade: a.first

Cliente.create! nome: '1º PEF  / 7° BIS', endereco: 'Vila militar do Bomfim,  S/N°. Bonfim-RR', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '2º PEF / 7° BIS', endereco: 'Av DOS EXPEDICIONÁRIOS, S/N°. Normandia-RR', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '3º PEF / 7° BIS', endereco: 'Av Pacaraima S/N° BR 173. Pacaraima-RR', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '4º PEF / 7° BIS', endereco: 'Noroeste de Roraima, Margem Município Alto Alegre S/N°. Surucucu-RR', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '5º PEF / 7° BIS', endereco: 'Localização Amajari, Alto Alegre, Pacaraima. Auaris-RR', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '6º PEF / 7° BIS', endereco: 'Rodovia Roraima 171, KM 85 S/N° . Uiramutã-RR', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '1º PEF / 5° BIS', endereco: 'comunidade às margens do Rio Waupés. Yauaretê-AM', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '2º PEF / 5° BIS', endereco: 'Situado às margens do Rio Waupés,  Rio Querari e Rio Uaupés, em direção ao interior do país. Querari-AM', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '3º PEF / 5° BIS', endereco: 'Situado na área indígena do Alto Rio Negro, a  fronteira com a Colômbia pelo Rio Içana e por marcos terrestres. São Joaquim-AM', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '4º PEF / 5° BIS', endereco: 'situado no distrito de Cucuí, acima da linha do Equador, na área da tríplice fronteira (Brasil, Colômbia e Venezuela). Cucuí-AM', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '5º PEF / 5° BIS', endereco: 'localizado no sopé do maciço formador do "Pico da Neblina" dentro do Parque Nacional do Pico da Neblina. Maturacá-AM', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '6º PEF / 5° BIS', endereco: 'localizado em Pari Cachoeira a/São Gabriel da Cachoeira. Pari-Cachoeira-AM', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '7º PEF / 5° BIS', endereco: 'Endereço: Praça Colômbia s/n. Tunuí-AM', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '1º PEF / 8° BIS', endereco: 'Atalia do Norte, no Rio javari S/N. Palmeiras do Javari-AM', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '2º PEF  / 8° BIS', endereco: 'próximo ao Santo Antônio do Ica S/N Rio Iça. IPIRANGA-AM', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '3º PEF  / 8° BIS', endereco: 'Rio Japurá  S/N. Vila Bittencourt-AM', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '4º PEF  / 8° BIS', endereco: 'próximo Ataliada do norte S/N  Rio Javari. Estirão do Equador-AM', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '1° DEF  / 61° BIS', endereco: 'Situada  no Município de Thaumarturgo, as margem do Rio Amonio S/N. São Salvador Mancio Lima-AC', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '2° DEF  / 61° BIS', endereco: 'Situado em São Salvador as margem do rio Moa S/N. Marechal Thaumarturgo-AC  ', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '1º PEF  / 6° BIS', endereco: 'localizado às margens do Rio Guaporé, a 28 Km da cidade de COSTA MARQUES. Forte Príncipe da Beira-RO', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '1º PEF  / 4° BIS', endereco: 'Situada  Epitaciolândia S/N. Epitaciolândia-AC  ', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '2º PEF  / 4° BIS', endereco: 'Km 01 da BR 317   S/N. Santa Rosa do Purus-AC', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '3º PEF  / 4° BIS', endereco: 'situado  a Prefeitura da Cidade, às margens do Rio Abunã. ASSIS BRASIL-AC', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: '4º PEF  / 4° BIS', endereco: 'Santa Rosa do Purus S/N. Plácido de Castro-AC ', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: 'TG 12-001', endereco: '', subordinacao: '', uasg: '', cidade: c

Cliente.create! nome: 'TG 12-002', endereco: 'ENDEREÇO: RUA DO AREAL - S/N', subordinacao: '', uasg:'', cidade: c

Cliente.create! nome: 'TG 12-008', endereco: 'BAIRRO: DOMINGOS SÁVIO', subordinacao: '', uasg: '', cidade: c

aaa = Hierarq.create! nome: 'Cap'
Usuario.create!nome: 'Campana', status: 1, tipo: 3, email: 'campana@4cta.eb.mil.br',
password: 'troqueestasenha', cliente: b.first, hierarq: aaa

#Usuario.create! nome: 'Ten Keller', email: 'keller@4cta.eb.mil.br',
#status: :ativo, tipo: :Nivel1, password: 'troqueestasenha'

bbb = Hierarq.create! nome: 'TC'
Usuario.create! nome: 'Júlio César', status: 0, tipo: 2, telefone: '(92)984169401',
email: 'juliocesar@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: bbb

Usuario.create! nome: 'Paulo Roberto ', status: 1, tipo: 2, telefone: '(92)984050677',
email: 'pauloroberto@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: bbb

Usuario.create! nome: 'Pietro', status: 1, tipo: 2, telefone: '(92)981020020',
email: 'pietro@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: bbb

ccc = Hierarq.create! nome: 'Maj'
Usuario.create! nome: 'Marcelo', status: 1, tipo: 2, telefone: '(92)981125490',
 email: 'marcelo@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ccc

Usuario.create!(nome: 'Borges Júnior', status: 1, tipo: 2, telefone: '(61)993099075',
 email: 'borgesjunior@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ccc)

Usuario.create!(nome: 'Adilson', status: 1, tipo: 2, telefone: '(92)982120031',
email: 'adilson@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ccc)

Usuario.create!(nome: 'Tsuruda', status: 1, tipo: 2, telefone: '(92)994488625',
 email: 'tsuruda@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ccc)

Usuario.create!(nome: 'Marco', status: 1, tipo: 2, telefone: '(32)991325858',
 email: 'marco@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ccc)

Usuario.create!(nome: 'Luiz Carlos', status: 1, tipo: 2, telefone: '(32)984540608',
 email: 'luizcarlos@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ccc)

Usuario.create!(nome: 'Fidélis', status: 1, tipo: 2, telefone: '(92)992691623',
 email: 'fidelis@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ccc)

Usuario.create!(nome: 'Xavier', status: 1, tipo: 2, telefone: '(92)981584709',
 email: 'xavier@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: aaa)

Usuario.create!(nome: 'Tayar', status: 1, tipo: 2, telefone: '(92)92999300',
email: 'tayar@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: aaa)

Usuario.create!(nome: 'Wilson Alves', status: 1, tipo: 2, telefone: '(92)984170633',
 email: 'wilsonalves@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: aaa)

Usuario.create!(nome: 'André Mendes', status: 1, tipo: 2, telefone: '(11)982086835',
 email: 'andremendes@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: aaa)

#Usuario.create! nome: 'Campana', status: 1, tipo: 2, telefone: '(92)991138899',
#email: 'campana@4cta.eb.mil.br', encrypted_password: 'troqueestasenha'

Usuario.create!(nome: 'Trojaike', status: 1, tipo: 2, telefone: '(92)984091572',
 email: 'trojaike@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: aaa)

Usuario.create!(nome: 'Pablo', status: 1, tipo: 2, telefone: '(92)993447172',
 email: 'pablo@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: aaa)

ddd = Hierarq.create! nome: '1º Ten'
Usuario.create!(nome: 'Leandro Farias', status: 1, tipo: 2, telefone: '(92)92982812121',
 email: 'leandrofarias@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ddd)

Usuario.create!(nome: 'Maurício', status: 1, tipo: 2, telefone: '(92)995001496',
 email: 'mauricio@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ddd)

Usuario.create!(nome: 'De Felice', status: 1, tipo: 2, telefone: '(21)92446776',
 email: 'defelice@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ddd)

Usuario.create!(nome: 'Ingrid Silva', status: 1, tipo: 2, telefone: '(92)99253-0315',
 email: 'ingridsilva@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ddd)

Usuario.create!(nome: 'Cunha', status: 1, tipo: 2, telefone: '(92)984292922',
 email: 'cunha@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ddd)

Usuario.create!(nome: 'Lendel', status: 1, tipo: 2, telefone: '(92)981437456',
 email: 'lendel@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ddd)

Usuario.create!(nome: 'Isabella chapira', status: 1, tipo: 2, telefone: '(92)99253-0315',
 email: 'isabellachapira@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ddd)

Usuario.create!(nome: 'Lucas Machado', status: 1, tipo: 2, telefone: '(92)992448445',
 email: 'lucasmachado@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ddd)

Usuario.create!(nome: 'Hermany', status: 1, tipo: 2, telefone: '(92)992381830',
 email: 'hermany@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ddd)

Usuario.create!(nome: 'Danilo', status: 1, tipo: 2, telefone: '(92)981765246',
 email: 'danilo@4cta.eb.mil.br',password: 'troqueestasenha', cliente: b.first, hierarq: ddd)

Usuario.create!(nome: 'Denys', status: 1, tipo: 2, telefone: '(92)91174322',
 email: 'denys@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ddd)

Usuario.create!(nome: 'Edilton Lopes', status: 1, tipo: 2, telefone: '(92)',
 email: 'ediltonlopes@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ddd)

Usuario.create!(nome: 'Henrique Alves', status: 1, tipo: 2, telefone: '(21)992630391',
 email: 'henriquealves@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ddd)

eee = Hierarq.create! nome: '2º Ten'
Usuario.create!(nome: 'Renovato', status: 1, tipo: 2, telefone: '(92)991341590',
 email: 'renovato@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: eee)

Usuario.create!(nome: 'Marcos Rocha', status: 1, tipo: 2, telefone: '(92)991262978',
 email: 'marcosrocha@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: eee)

Usuario.create!(nome: 'Gonzales ', status: 1, tipo: 2, telefone: '(92)991420521',
 email: 'gonzales@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: eee)

Usuario.create!(nome: 'Loel', status: 1, tipo: 2, telefone: '(92)993947822',
 email: 'loel@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: eee)

Usuario.create!(nome: ' Rolim', status: 1, tipo: 2, telefone: '(92)994234935',
 email: 'rolim@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: eee)

Usuario.create!(nome: 'Keller', status: 0, tipo: 2, telefone: '(92)981126434',
 email: 'keller@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: eee)

fff = Hierarq.create! nome: 'Asp Of'
Usuario.create!(nome: 'Oliveira', status: 1, tipo: 2, telefone: '(92)991281393',
 email: 'aspoliveira@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: fff)

Usuario.create!(nome: 'Hanada', status: 1, tipo: 2, telefone: '(92)984193332',
 email: 'hanada@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: fff)

ggg = Hierarq.create! nome: 'ST'
Usuario.create!(nome: 'Valter', status: 1, tipo: 2, telefone: '(92)981471154',
 email: 'valter@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ggg)

Usuario.create!(nome: 'Tadeu', status: 1, tipo: 2, telefone: '(92)999696356',
 email: 'tadeu@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ggg)

Usuario.create!(nome: 'Lucena', status: 1, tipo: 2, telefone: '(61)981612197',
 email: 'lucena@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ggg)

Usuario.create!(nome: 'Lisboa', status: 1, tipo: 2, telefone: '',
 email: 'lisboa@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ggg)

Usuario.create!(nome: 'Edirregis', status: 1, tipo: 2, telefone: '(22)997612596',
 email: 'edirregis@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ggg)

Usuario.create!(nome: 'Cruz', status: 1, tipo: 2, telefone: '(92)991576394',
 email: 'cruz@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ggg)

Usuario.create!(nome: 'Sergio Carlos', status: 1, tipo: 2, telefone: '(92)992687631',
 email: 'sergiocarlos@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ggg)

Usuario.create!(nome: 'Figueiredo', status: 1, tipo: 2, telefone: '(92)991295713',
 email: 'figueiredo@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: ggg)

hhh = Hierarq.create! nome: '1º Sgt'
Usuario.create!(nome: 'Alexandre', status: 1, tipo: 2, telefone: '(92)994153701',
email: 'alexandre@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: hhh)

Usuario.create!(nome: 'Teixeira', status: 1, tipo: 2, telefone: '(92)996098122',
 email: 'teixeira@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: hhh)

Usuario.create!(nome: 'Fernando', status: 1, tipo: 2, telefone: '(71)993412213',
 email: 'fernando@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: hhh)

Usuario.create!(nome: 'Jurandir', status: 1, tipo: 2, telefone: '(92)981143666',
 email: 'jurandir@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: hhh)

Usuario.create!(nome: 'João', status: 1, tipo: 2, telefone: '(32)999009172',
 email: 'joao@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: hhh)

Usuario.create!(nome: 'Wagner', status: 1, tipo: 2, telefone: '(92)993845747',
 email: 'wagner@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: hhh)

Usuario.create!(nome: 'André Luiz', status: 1, tipo: 2, telefone: '(21)995801250',
 email: 'andreluiz@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: hhh)

Usuario.create!(nome: 'Ângelo', status: 1, tipo: 2, telefone: '(31)991134818',
 email: 'angelo@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: hhh)

Usuario.create!(nome: 'Nascimento', status: 1, tipo: 2, telefone: '(92)993013689',
 email: 'nascimento@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: hhh)

Usuario.create!(nome: 'Leite', status: 1, tipo: 2, telefone: '(81)996050947',
 email: 'leite@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: hhh)

Usuario.create!(nome: 'Anderson', status: 1, tipo: 2, telefone: '(92)991388959',
 email: 'anderson@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: hhh)
#Usuario.create!(nome: 'Nunes', status: 1, tipo: 2, telefone: '(92)984374240',
# email: 'nunes@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first)

iii = Hierarq.create! nome: '2º Sgt'

Usuario.create!(nome: 'Fredson', status: 1, tipo: 2, telefone: '(92)993269708',
 email: 'fredson@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: iii)

Usuario.create!(nome: 'Pedro', status: 1, tipo: 2, telefone: '(92)992700042',
 email: 'pedro@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: iii)

Usuario.create!(nome: 'Chervinski', status: 1, tipo: 2, telefone: '(92)992696050',
 email: 'chervinski@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: iii)

Usuario.create!(nome: 'Gama', status: 1, tipo: 2, telefone: '(92)988050203',
 email: 'gama@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: iii)

Usuario.create!(nome: 'Da Costa', status: 1, tipo: 2, telefone: '(92)995144199',
 email: 'dacosta@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: iii)

Usuario.create!(nome: 'Emerson', status: 1, tipo: 2, telefone: '(92)999981944',
 email: 'emerson@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: iii)

 Usuario.create!(nome: 'Nunes', status: 1, tipo: 2, telefone: '(92)984374240',
  email: 'nunes@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: iii)

Usuario.create!(nome: 'Luiz Castro', status: 1, tipo: 2, telefone: '(92)984703079',
 email: 'luizcastro@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: iii)

Usuario.create!(nome: 'Alberto', status: 1, tipo: 2, telefone: '(92)993837633',
 email: 'alberto@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: iii)

Usuario.create!(nome: 'Sergio', status: 1, tipo: 2, telefone: '(92)988389272',
 email: 'sergio@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: iii)

Usuario.create!(nome: 'J Augusto ', status: 1, tipo: 2, telefone: '(92)994249447',
 email: 'jaugusto@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: iii)

jjj = Hierarq.create! nome: '3º Sgt'

Usuario.create!(nome: 'Raimar', status: 1, tipo: 2, telefone: '(92)999692395',
 email: 'raimar@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: jjj)

Usuario.create!(nome: 'Cicero', status: 1, tipo: 2, telefone: '(92)994839153',
 email: 'cicero@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: jjj)

Usuario.create!(nome: 'Lopes', status: 1, tipo: 2, telefone: '(92)999624784',
 email: 'lopes@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: jjj)

Usuario.create!(nome: 'Cabral', status: 1, tipo: 2, telefone: '(92)994575024',
 email: 'cabral@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: jjj)

Usuario.create!(nome: 'Scher', status: 1, tipo: 2, telefone: '(81)996406211',
 email: 'scher@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: jjj)

Usuario.create!(nome: 'Levi', status: 1, tipo: 2, telefone: '(92)981087688',
 email: 'levi@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: jjj)

Usuario.create!(nome: 'Rômulo', status: 1, tipo: 2, telefone: '(21)964196890',
 email: 'romulo@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: jjj)

Usuario.create!(nome: 'Paulo Júnior', status: 1, tipo: 2, telefone: '(92)992214690',
 email: 'paulojunior@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: jjj)

Usuario.create!(nome: 'Rodrigues', status: 1, tipo: 2, telefone: '(92)993437640',
 email: 'rodrigues@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first,hierarq: jjj)

Usuario.create!(nome: 'Matos', status: 1, tipo: 2, telefone: '(92)991415450',
 email: 'matos@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: jjj)

 Usuario.create!(nome: 'Borges', status: 1, tipo: 2, telefone: '(92)991143425',
  email: 'borges@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: jjj)

Usuario.create!(nome: 'Magalhães', status: 1, tipo: 2, telefone: '(92)981288726',
 email: 'magalhaes@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: jjj)

Usuario.create!(nome: 'Andrio', status: 1, tipo: 2, telefone: '(92)992659797',
 email: 'andrio@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: jjj)
#Usuario.create!(nome: 'Borges', status: 1, tipo: 2, telefone: '(92)991143425',
# email: 'borges@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first)

Usuario.create!(nome: 'André Rocha', status: 1, tipo: 2, telefone: '(92)996158370',
 email: 'andrerocha@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: jjj)

Usuario.create!(nome: 'Fontenelle', status: 1, tipo: 2, telefone: '(92)984134535',
 email: 'fontenelle@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: jjj)

kkk = Hierarq.create! nome: 'Cb'
Usuario.create!(nome: 'Santana', status: 1, tipo: 2, telefone: '(92)991710186',
 email: 'santana@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: kkk)

Usuario.create!(nome: 'Gonçalves', status: 1, tipo: 2, telefone: '(92)993251644',
 email: 'gonçalves@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: kkk)

Usuario.create!(nome: 'Manoel', status: 1, tipo: 2, telefone: '(92)990024084',
 email: 'manoel@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: kkk)

Usuario.create!(nome: 'cavalcante', status: 1, tipo: 2, telefone: '(92)992284018',
 email: 'cavalcante@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: kkk)

Usuario.create!(nome: 'Costa', status: 1, tipo: 2, telefone: '(92)994511407',
 email: 'costa@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first, hierarq: kkk)

Hierarq.create! nome: 'Cel'
Hierarq.create! nome: 'Gen Bda'
Hierarq.create! nome: 'Gen Div'
Hierarq.create! nome: 'Gen Ex'
Hierarq.create! nome: 'Sd EP'
Hierarq.create! nome: 'Sd EV'
Hierarq.create! nome: 'FC'

Cargo.create! nome: 'Ch 4º CTA'

Cargo.create! nome: 'Sub Ch 4º CTA'

Cargo.create! nome: 'Ch Div Técnica'

Cargo.create! nome: 'Ch Seç Gerência - DT'

Cargo.create! nome: 'Adj Seç Gerência -  DT'

Cargo.create! nome: 'Aux Seç Gerência - DT'

Cargo.create! nome: 'Ch Seç Projetos - DT'

Cargo.create! nome: 'Adj Seç Projetos - DT'

Cargo.create! nome: 'Aux Seç Projetos - DT'

Cargo.create! nome: 'Ch Seç Logística - DT'

Cargo.create! nome: 'Adj Seç Logística - DT'

Cargo.create! nome: 'Aux Seç Logística - DT'

Cargo.create! nome: 'Ch Seç Capacitação - DT'

Cargo.create! nome: 'Adj Seç Capacitação - DT'

Cargo.create! nome: 'Aux Seç Capacitação - DT'

Cargo.create! nome: 'Ch Div Operacional'

Cargo.create! nome: 'Ch Central de Serviços - DO'

Cargo.create! nome: 'Adj Central de Serviços - DO'

Cargo.create! nome: 'Aux Central de Serviços - DO'

Cargo.create! nome: 'Ch Seç Rede Rádio - DO'

Cargo.create! nome: 'Adj Seç Rede Rádio - DO'

Cargo.create! nome: 'Aux Seç Rede Rádio - DO'

Cargo.create! nome: 'Ch Seç Gerenciamento das operações - DO'

Cargo.create! nome: 'Adj Seç Gerenciamento das operações - DO'

Cargo.create! nome: 'Aux Seç Gerenciamento das operações - DO'

Cargo.create! nome: 'Ch SubSeç de Controle Operacional - DO'

Cargo.create! nome: 'Adj SubSeç de Controle Operacional - DO'

Cargo.create! nome: 'Aux SubSeç de Controle Operacional - DO'

Cargo.create! nome: 'Ch Seç Gerenciamento Técnico - DO'

Cargo.create! nome: 'Adj Seç Gerenciamento Técnico - DO'

Cargo.create! nome: 'Aux Seç Gerenciamento Técnico - DO'

Cargo.create! nome: 'Ch Subseç Gerenciamento de Infraestrutura - DO'

Cargo.create! nome: 'Adj Subseç Gerenciamento de Infraestrutura - DO'

Cargo.create! nome: 'Aux Subseç Gerenciamento de Infraestrutura - DO'

Cargo.create! nome: 'Ch Div de Apoio'

Cargo.create! nome: 'Ch Seç Pessoal'

Cargo.create! nome: 'Adj Seç Pessoal'

Cargo.create! nome: 'Aux Seç Pessoal'

Cargo.create! nome: 'Ch Secretaria'

Cargo.create! nome: 'Adj Secretaria'

Cargo.create! nome: 'Aux Secretaria'

Cargo.create! nome: 'Ch Seç de Instrução'

Cargo.create! nome: 'Adj Seç de Instrução'

Cargo.create! nome: 'Aux Seç de Instrução'

Cargo.create! nome: 'Ch Seç de Comunicação Social'

Cargo.create! nome: 'Adj Seç de Comunicação Social'

Cargo.create! nome: 'Aux Seç de Comunicação Social'

Cargo.create! nome: 'Ch Seç de Inteligência'

Cargo.create! nome: 'Adj Seç de Inteligência'

Cargo.create! nome: 'Aux Seç de Inteligência'

Cargo.create! nome: 'Ch Contigente'

Cargo.create! nome: 'Adj Contigente'

Cargo.create! nome: 'Aux Contigente'

Cargo.create! nome: 'Ch Seç de Informática - DAP'

Cargo.create! nome: 'Adj Seç de Informática - DAP'

Cargo.create! nome: 'Aux Seç de Informática - DAP'

Cargo.create! nome: 'Ch Div Administrativa'

Cargo.create! nome: 'Ch Seç Licitações e Contrato'

Cargo.create! nome: 'Adj Seç Licitações e Contrato'

Cargo.create! nome: 'Aux Seç Licitações e Contrato'

Cargo.create! nome: 'Ch Seç Controle de Material e Patrimônio'

Cargo.create! nome: 'Adj Seç Controle de Material e Patrimônio'

Cargo.create! nome: 'Aux Seç Controle de Material e Patrimônio'

Cargo.create! nome: 'Ch Seç Armazenagem Triagem e Suprimento'

Cargo.create! nome: 'Adj Seç Armazenagem Triagem e Suprimento'

Cargo.create! nome: 'Aux Seç Armazenagem Triagem e Suprimento'

Cargo.create! nome: 'Ch Reserva de Material'

Cargo.create! nome: 'Adj Reserva de Material'

Cargo.create! nome: 'Aux Reserva de Material'

Cargo.create! nome: 'Ch Seç de Serviços Gerais'

Cargo.create! nome: 'Adj Seç de Serviços Gerais'

Cargo.create! nome: 'Aux Seç de Serviços Gerais'

Cargo.create! nome: 'Ch Seç de Manutenção e Transporte'

Cargo.create! nome: 'Adj Seç de Manutenção e Transporte'

Cargo.create! nome: 'Aux Seç de Manutenção e Transporte'

Cargo.create! nome: 'Ch Seç Segurança da Informação - STIR'

Cargo.create! nome: 'Adj Seç Segurança da Informação - STIR'

Cargo.create! nome: 'Aux Seç Segurança da Informação - STIR'

Cargo.create! nome: 'Ch Seç de Planejamento e Controle'

Cargo.create! nome: 'Adj Seç de Planejamento e Controle'

Cargo.create! nome: 'Aux Seç de Planejamento e Controle'

Encargo.create! nome: 'Ch Seç TI OM'
Encargo.create! nome: 'Adj Seç TI OM'
Encargo.create! nome: 'Aux Sec TI OM'
Encargo.create! nome: 'Fiscal de contrato da OI EBNet 2015 titular'

Habilidade.create! nome: 'Gestão de Sv TI'
Habilidade.create! nome: 'Gestão de Projetos'
Habilidade.create! nome: 'TI Adm Púb Fed'
Habilidade.create! nome: 'Gestão Estratégica Organizacional'
Habilidade.create! nome: 'Arquitetura de redes: desenho, projeto, implantação e entrega'
Habilidade.create! nome: 'CAD'
Habilidade.create! nome: 'MAN'
Habilidade.create! nome: 'WLAN'
Habilidade.create! nome: 'Telefonia VoIP'
Habilidade.create! nome: 'LAN'
Habilidade.create! nome: 'Datacenter'
Habilidade.create! nome: 'Análise de Sistemas'
Habilidade.create! nome: 'Administração de Base de Dados'
Habilidade.create! nome: 'Segurança da Informação'
Habilidade.create! nome: 'Perícia Forense'
Habilidade.create! nome: 'Administração de Rede Rádio'
Habilidade.create! nome: 'Infraestrutura de Rede Rádio'
Habilidade.create! nome: 'Administração de Rede Telefônica VoIP'
Habilidade.create! nome: 'Infraestrutura de Telefonia VoIP'
Habilidade.create! nome: 'Administração de Redes'
Habilidade.create! nome: 'Monitoração de Redes'
Habilidade.create! nome: 'Suporte ao Cliente'
Habilidade.create! nome: 'Administração/Operação de redes'
Habilidade.create! nome: 'Infraestrutura de Instalações'
Habilidade.create! nome: 'Servidores'
Habilidade.create! nome: 'Dados e Armazenamento'
Habilidade.create! nome: 'Cabeamento Estruturado'
Habilidade.create! nome: 'Técnico em Eletricidade Predial'
Habilidade.create! nome: 'Técnico em Eletricidade Industrial'
Habilidade.create! nome: 'Técnico em Refrigeração'
Habilidade.create! nome: 'Instalador de Cabeamento Estruturado'
Habilidade.create! nome: 'Instalador de Cabos em Posteamento'
Habilidade.create! nome: 'Técnico em Eletrônica'
Habilidade.create! nome: 'Administração de LAN (Seç TI)'
Habilidade.create! nome: 'Instalação de LAN (Seç TI)'
Habilidade.create! nome: 'Implantação de LAN (Seç TI)'
Habilidade.create! nome: 'Aquisições para LAN (Seç TI)'
Habilidade.create! nome: 'Implantar e operar os sistemas de informação da OM (Seç TI)'

#resta o campana criar os "elementos indisponíveis"
Parado.create! nome: 'Serviço de EBNet Lote 1'
Parado.create! nome: 'Serviço de EBNet Lote 2'
Parado.create! nome: 'Serviço de Hospedagem de páginas web'
Parado.create! nome: 'Serviço de Hospedagem de sistemas regionais'
Parado.create! nome: 'Serviço de Correio eletrônico regional'
Parado.create! nome: 'Serviço de Telefonia corporativa'
Parado.create! nome: 'Sistema elétrico do DC'
Parado.create! nome: 'Sistema de climatização do DC'
Parado.create! nome: 'Sistema de telecom do DC'
Parado.create! nome: 'Backbone Datacenter do CTA-MAN'
Parado.create! nome: 'Roteador Lote 1 de PP'
Parado.create! nome: 'Roteador de integração de PP'
Parado.create! nome: 'Roteador Lote 2 de PP'
Parado.create! nome: 'Switch da MAN'
Parado.create! nome: 'Servidor'
Parado.create! nome: 'Storage'
Parado.create! nome: 'Central telefônica'
Parado.create! nome: 'Firewall'
Parado.create! nome: 'Roteador de integração do PP do CTA'
Parado.create! nome: 'Roteador Lote 1 PP do CTA'
Parado.create! nome: 'Roteador Lote 2 PP do CTA'
Parado.create! nome: 'Switch core do CTA'
Parado.create! nome: 'Gerador'
Parado.create! nome: 'UPS'
Parado.create! nome: 'Subestação'
Parado.create! nome: 'Quadro Elétrico'
Parado.create! nome: 'Cabeamento de acesso à rede externa'
Parado.create! nome: 'Cabeamento de backbone do DC'
Parado.create! nome: 'Cabeamento horizontal do DC'
Parado.create! nome: 'Switch do DC'
Parado.create! nome: 'Indeterminado'

Motivo.create! nome: 'Desalinhamento de antena satelital em PP'
Motivo.create! nome: 'Rompimento de cabo óptico em MAN'
Motivo.create! nome: 'Downtime de VMs'
Motivo.create! nome: 'Desconfiguração de VMs'
Motivo.create! nome: 'Desconfiguração de central telefônica'
Motivo.create! nome: 'Incêndio em DC'
Motivo.create! nome: 'Desconfiguração no chaveamento rede elétrica-gerador'
Motivo.create! nome: 'Banco de baterias do UPS não suporta carga'
Motivo.create! nome: 'Rompimento no cabeamento estruturado do DC'
Motivo.create! nome: 'Desconfiguração do roteador no DC'
Motivo.create! nome: 'Desconfiguração de switch em MAN'
Motivo.create! nome: 'Perda de banco de dados de servidor'
Motivo.create! nome: 'Queima de componente de HW'
Motivo.create! nome: 'Vírus em componente de SW'
Motivo.create! nome: 'Falha de segurança no DC'
Motivo.create! nome: 'Falta de combustível no gerador'
Motivo.create! nome: 'Pane mecânica no gerador'
Motivo.create! nome: 'Pane elétrica no gerador'
Motivo.create! nome: 'Desconfiguração do UPS'
Motivo.create! nome: 'Falta de gás nos climatizadores'
Motivo.create! nome: 'Desconfiguração nos climatizadores'
Motivo.create! nome: 'Queima de componente eletrônico nos climatizadores'
Motivo.create! nome: 'Queda de poste em MAN'
Motivo.create! nome: 'Desabastecimento de concessionária de energia'
Motivo.create! nome: 'Desconfiguração de proxy'
Motivo.create! nome: 'Desconfiguração de firewall'
Motivo.create! nome: 'Desconfiguração de gateway'
Motivo.create! nome: 'Superaquecimento de componente eletrônico'
Motivo.create! nome: 'Superaquecimento de HW'
Motivo.create! nome: 'Switch do DC'
Motivo.create! nome: 'Indeterminado'
