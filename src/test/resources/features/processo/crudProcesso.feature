#language: pt
  Funcionalidade: CRUD de Processo

    Cenário de Fundo:
      Dado que o usuário gostaria de salvar um Processo
      E o usuário informa vara com valor de "Centro"
      E o usuário informa numero_processo com valor de "159"
      E o usuário informa natureza com valor de "Civil"
      E o usuário informa partes com valor de "The People vs OJ"
      E o usuário informa urgente com valor de "S"
      E o usuário informa arbitrariamento com valor de "N"
      E o usuário informa assistente_social com valor de "Aurora"
      E o usuário informa data_entrada com valor de "17/04/2015"
      E o usuário informa data_saida com valor de "23/09/2020"
      E o usuário informa data_agendamento com valor de "25/05/2015"
      E o usuário informa status com valor de "Concluído"
      E o usuário informa observacao com valor de "Nada não"

    Cenário: Criação de novo Processo
      Quando o usuário clica no botão de Salvar
      Então o usuário deve ver a mensagem "sucesso"

    Cenário: Visualizar um Processo
      Quando o usuário clica no botão de Salvar
      E deseja ver as informações do Processo
      Então o usuário deve ver a mensagem "sucesso"
      E o usuário deve ver vara com valor de "Centro"
      E o usuário deve ver numero_processo com valor de "159"
      E o usuário deve ver natureza com valor de "Civil"
      E o usuário deve ver partes com valor de "The People vs OJ"
      E o usuário deve ver urgente com valor de "S"
      E o usuário deve ver arbitrariamento com valor de "N"
      E o usuário deve ver assistente_social com valor de "Aurora"
      E o usuário deve ver data_entrada com valor de "17/04/2015"
      E o usuário deve ver data_saida com valor de "23/09/2020"
      E o usuário deve ver data_agendamento com valor de "25/05/2015"
      E o usuário deve ver status com valor de "Concluído"
      E o usuário deve ver observacao com valor de "Nada não"

    Cenário: Atualizar um Processo com put
      Quando o usuário clica no botão de Salvar
      E o usuário informa vara com valor de "Sul"
      E o usuário informa numero_processo com valor de "15945"
      E o usuário informa natureza com valor de "Civil"
      E o usuário informa partes com valor de "The People vs OJ"
      E o usuário informa urgente com valor de "S"
      E o usuário informa arbitrariamento com valor de "N"
      E o usuário informa assistente_social com valor de "Aurora"
      E o usuário informa data_entrada com valor de "17/04/2015"
      E o usuário informa data_saida com valor de "23/09/2020"
      E o usuário informa data_agendamento com valor de "25/05/2015"
      E o usuário informa status com valor de "Concluído"
      E o usuário informa observacao com valor de "Nada não"
      E o usuário clica no botão de salvar novamente
      E deseja ver as informações do Processo
      Então o usuário deve ver a mensagem "sucesso"
      E o usuário deve ver vara com valor de "Sul"
      E o usuário deve ver numero_processo com valor de "15945"
      E o usuário deve ver natureza com valor de "Civil"
      E o usuário deve ver partes com valor de "The People vs OJ"
      E o usuário deve ver urgente com valor de "S"
      E o usuário deve ver arbitrariamento com valor de "N"
      E o usuário deve ver assistente_social com valor de "Aurora"
      E o usuário deve ver data_entrada com valor de "17/04/2015"
      E o usuário deve ver data_saida com valor de "23/09/2020"
      E o usuário deve ver data_agendamento com valor de "25/05/2015"
      E o usuário deve ver status com valor de "Concluído"
      E o usuário deve ver observacao com valor de "Nada não"

    Cenário: Apagar um Processo
      Quando o usuário clica no botão de Salvar
      E o usuário clica no botão de Apagar
      Então o usuário deve ver a mensagem "sem conteudo"

    @ignore
    Cenário: Não fazer esse
      Quando o usuário clica no botão de Salvar
      E o usuário informa vara com valor de "Algum"
      E o usuário informa numero_processo com valor de "20102"
      E o usuário informa natureza com valor de "Palavrão"
      E o usuário informa partes com valor de "The People vs AJ"
      E o usuário informa urgente com valor de "N"
      E o usuário informa arbitrariamento com valor de "S"
      E o usuário informa assistente_social com valor de "Roberta"
      E o usuário informa data_entrada com valor de "17/04/2016"
      E o usuário informa data_saida com valor de "30/10/2020"
      E o usuário informa data_agendamento com valor de "25/05/2016"
      E o usuário informa status com valor de "Longe"
      E o usuário informa observacao com valor de "Nada não"
      E o usuário clica no botão de salvar novamente
      E deseja ver as informações do Processo
      Então o usuário deve ver a mensagem "sucesso"
      E o usuário deve ver vara com valor de "Algum"
      E o usuário deve ver numero_processo com valor de "15945"
      E o usuário deve ver natureza com valor de "Palavrão"
      E o usuário deve ver partes com valor de "The People vs AJ"
      E o usuário deve ver urgente com valor de "N"
      E o usuário deve ver arbitrariamento com valor de "S"
      E o usuário deve ver assistente_social com valor de "Roberta"
      E o usuário deve ver data_entrada com valor de "17/04/2016"
      E o usuário deve ver data_saida com valor de "30/10/2020"
      E o usuário deve ver data_agendamento com valor de "25/05/2016"
      E o usuário deve ver status com valor de "Longe"
      E o usuário deve ver observacao com valor de "Nada não"

    Esquema do Cenário:
      Quando o usuário clica no botão de Salvar
      E o usuário clica no botão de Apagar
      Então o usuário deve ver a mensagem "<mensagem>"
      Exemplos:
        |mensagem     |
        |sem conteudo |
