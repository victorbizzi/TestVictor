# QAAutomationChallenge

TESTPLAN DEFINITION AND RUN ROUTINE Planejamento da automação de acordo com prioridade das features: Priorizar as mais críticas onde requer atenção maior e mais tempo de execução dos testes na regressão e a execução da regressão ocorre após cada deploy de nova release

LOGS AND REPORT Estão documentados em arquivos HTML na pasta Logs Arquivo log.html: Possui o step by step de cada passo executado e os screenshots Arquivo report.html: Possui o reporte com uma visão mais genérica da execução geral dos testes. É menos detalhado que o arquivo log.html

HOW TO EXECUTE Consule Emulator (utilizo o CMDER) Python instalado Robot Framework instlado (via pip) Script to run in console emulator: python -m robot -d ./logs QAAutomationChallenge.robot

FILES: resources/PageObjects.robot: elementos mapeados tests/QAAutomationChallenge.robot: Scripts dos TestCases tests/exampleAPI.robot: inseri um script de estrutura de APIs. Não está a funcionar, é apenas um exemplo tests/bodyJSon.py: arquivo JSon exemplo
