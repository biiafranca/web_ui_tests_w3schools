# Considerações do Projeto
Seguem algumas justificativas para as escolhas realizadas no projeto.

## Identificadores HTML

Os identificadores HTML são necessários para localizar os elementos na página e proceder com as simulações das entradas de usuário (cliques, textos, etc).

Os principais identificadores são: id, class e xpath. 

O id é o mais indicado, pois é um identificador único, e que tende a não ser alterado conforme a página recebe atualizações. 

A class é menos utilizada, pois geralmente trata de um grupo de elementos, não especificando qual o elemento exatamente deve ser tratado na ação em questão.

O xpath foi a opção mais utilizada nos testes da página W3Schools, pois nesta a maioria dos elementos não continham um id único. 

O xpath pode ser baseado na localização do elemento na página, na combinação da localização com class, entre outras variadas opções.

Nestes testes a escolha foi utilizar o xpath baseado no texto do elemento alvo.
Presumiu-se que seria mais provável a alteração da localização dos elementos do que a alteração dos textos, e a opção escolhida pareceu mais estável e com menos necessidade de manutenção após atualizações.

Para mais informações sobre localização de elementos via xpath, acesse: https://www.swtestacademy.com/xpath-selenium/

## União de testes relacionados em um Test Case
Para manter testes relacionados em apenas um Test Case, os cenários "Scenario #01: Open And Close Modal Box" e "Scenario #02: Check Color Names And Correspondent Hex" tiveram a repetição ("When"..."Then"..."When"..."Then"...), que pode não ser recomendada em alguns casos.

Uma escolha possível seria a separação dos testes, para que cada um contesse apenas um conjunto simples da sintaxe Gherkin.

A decisão final foi a união em apenas um Test Case, pois devido a tag robot:continue-on-failure, caso o teste falhe em algum desses passos, ele continuará executando os próximos passos, e o relatório de testes informará exatamente o ponto em que o teste falhou, não causando prejuízo algum na execução ou interpretação dos resultados do teste.

## Headlessfirefox

Os navegadores headless são navegadores sem uma interface gráfica do usuário, o que é útil em caso de execução via container, por isso essa opção foi escolhida.

O navegador Firefox foi escolhido devido a sua facilidade de configuração na execução de testes web.

## Interpretação dos resultados

Além do resultado exibido no console, o Robot Framework gera arquivos de Log e Report, para que o testador tenha mais detalhes da execução.

Para dicas de interpretação desses resultados, consulte a página: https://medium.com/@mayfernandes/season-running-ep-01-log-e-report-de-execu%C3%A7%C3%A3o-do-robot-framework-4119d8b37bab
