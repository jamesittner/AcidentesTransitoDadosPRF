# Análise de Dados de Acidentes em Rodovias Brasileiras

## Objetivo do Projeto
O objetivo deste projeto é demonstrar habilidades de análise de dados utilizando SQL para a exploração de dados de acidentes de trânsito em rodovias brasileiras, Power BI para visualização e dashboards interativos, e Python para exportação dos dados do arquivo CSV para o banco de dados no PostgreSQL. A análise visa identificar padrões, tendências e fatores críticos que contribuem para acidentes de trânsito, com o intuito de fornecer insights valiosos para auxiliar na tomada de decisões estratégicas.

## Técnicas Utilizadas

### SQL para Análise Exploratória de Dados (EDA)
- Limpeza e preparação dos dados
- Junção de planilhas em formato CSV

### Python para Exportação de Dados
- Exportar dados para o banco de dados no PostgreSQL

### Visualização de Dados no Power BI
- Gráficos e tabelas para ilustrar os principais insights
- Dashboards interativos para apresentação dos resultados

## Fonte de Dados
- [Dados Abertos da PRF](https://www.gov.br/prf/pt-br/acesso-a-informacao/dados-abertos/dados-abertos-da-prf)
- Período: 2019 a 23/12/2024

## Impacto do Projeto
Este projeto tem um impacto significativo em diversas áreas:

### Segurança no Trânsito
- Identificação de fatores críticos que contribuem para acidentes de trânsito

### Tomada de Decisão Estratégica
- Autoridades de trânsito e formuladores de políticas podem utilizar os insights gerados para:
  - Melhorar a infraestrutura viária
  - Implementar campanhas de conscientização
  - Planejar operações de fiscalização mais eficazes

### Planejamento de Viagens
- Fornecer informações sobre os piores dias e horários para viajar, ajudando motoristas a evitar períodos de alto risco, melhorando a segurança e eficiência das viagens

### Inovação em Análise de Dados
- Demonstração de competências técnicas e oferecimento de soluções práticas e valiosas para um problema crítico de segurança pública

## Insights Gerais

### Dados de Acidentes da PRF no Brasil (2019 - 2024)

**Redução em 2020 devido à pandemia de Covid-19:**
- Houve uma diminuição de 5,9% no número total de acidentes em 2020.
- Redução de 9,7% no total de feridos.
- Diminuição de 0,9% no número de mortos.
- A pandemia resultou em menor circulação de veículos nas rodovias, contribuindo para esses números.

**Meses com maior número de feridos:**
- **Janeiro**: 40 mil feridos.
- **Outubro**: 41 mil feridos.
- Meses com maior número de feridos graves: **Outubro** e **Julho**, ambos com 10 mil feridos graves cada, considerando o total do período analisado.

**Acidentes por dia da semana:**
- A maioria dos acidentes ocorre nos finais de semana.
- **Sábado e Domingo**: Média de 211,5 acidentes por dia.

**Horários de pico de acidentes:**
- O maior pico de acidentes ocorre entre **18h e 19h**, coincidente com o horário de saída do trabalho.
- A maioria dos acidentes acontece no período da tarde, seguido pela noite, manhã e, por último, a madrugada.
- **Madrugada**: Período mais tranquilo, com menos da metade do total e média de acidentes.

**Acidentes em feriados:**
- Há uma média maior de acidentes em feriados, vésperas de feriado e nos dias de retorno de feriados.

**Condições climáticas e acidentes:**
- A maioria dos acidentes ocorre com o céu claro, contrariando o senso comum.
- Seguido por dias nublados e, em terceiro lugar, acidentes durante a chuva.

**Características das vias e acidentes:**
- **50% dos acidentes** ocorrem em pista simples.
- A maioria dos acidentes acontece em retas, indicando:
  - Ultrapassagens arriscadas
  - Excesso de confiança e aumento de velocidade
  - Desatenção
  - Obstáculos na pista
  - Colisões frontais

**Tipos mais comuns de acidentes:**
1. **Colisão traseira**
2. **Saída de leito carroçável** (quando o veículo sai da pista, indo para o acostamento ou áreas fora da estrada)
3. **Colisão transversal** (comum em batidas em "T" de 90 graus)

**Principais causas de acidentes:**
1. Falta de atenção à condução
2. Reação tardia e ausência de reação do condutor
3. Velocidade incompatível com a via (4º lugar)

**Link do Dashboard no Power BI:**
[Dashboard no Power BI](https://app.powerbi.com/view?r=eyJrIjoiNTE0NGY1YjYtOGUzMy00ODg3LWE3NmQtMjBiYWIxZDExYzE1IiwidCI6Ijg0MmQ2OTI3LWYzOWMtNDU0Ni04ODg3LWMxNTYxYWMyOTA1NiJ9)
