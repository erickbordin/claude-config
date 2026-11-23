# carrossel no TikTok e no Instagram

Playbook adaptado do artigo de Matheus Gobbi (@matheusgobbidev, Fitfolio, "Como eu distribuo meu app com carrossel no TikTok e no Instagram", 18/11/2026). O visual dos slides vem do `marketing.md`; este arquivo dá a estrutura.

## a métrica

- Cada post é otimizado para **views**. A conversão de carrossel é baixa (cerca de 1 download a cada 2.000 views em escala, no artigo), então o volume decide.
- Enquanto o app não está na App Store, a conversão é **inscrição na lista de espera** do site `www.seucorre.app`, no lugar do download. Medida por conta: inscrições a cada 1.000 views, anotadas por lote até termos a nossa referência.
- Um formato fica ou sai pelo total que gera em vários posts, nunca por um post isolado.
- Faixas de views por post:
  - abaixo de 300: problema da conta (aquecimento, conta marcada)
  - 300 a 1 mil: conteúdo fraco
  - 1 mil a 5 mil: continue ajustando o formato
  - 5 mil a 100 mil: o gancho funciona
  - 100 mil ou mais: escale
- Views altas sem inscrição: o problema está no caminho até o site (bio, link, página), não no carrossel.
- Depois do lançamento, download sem assinatura: pare de postar e conserte onboarding ou paywall.

## levar para a lista de espera

- Cada conta tem o próprio link na bio: `www.seucorre.app/?origem=<conta>`, com a origem em minúsculas no formato `[a-z0-9_-]{1,30}` (`tiktok`, `instagram`, `tt-<persona>`, `ig-<persona>`). O site grava a origem e a contagem por conta sai de `select origem, count(*) from lista_de_espera group by origem` (MCP `supabase`, só leitura).
- Nas páginas temáticas, a bio fala como a persona e identifica a marca: "conteúdo do @seucorre, primeiro mês grátis na lista" + o link.
- Sem link clicável na bio (TikTok abaixo de 1 mil seguidores), escreva `seucorre.app` na bio em texto; essas inscrições chegam sem origem.
- O convite vai na legenda e na bio, nunca nos slides: "entra na lista pelo link da bio, primeiro mês grátis".
- Ofertas que o site entrega hoje: primeiro mês grátis e "os 100 primeiros testam o app antes do lançamento". Prometa só o que estiver no site.

## volume

- 2 a 3 carrosséis por dia em cada conta: lote semanal de 14 a 21 por conta.
- O Erick posta pelo celular; o lote sai pronto em arquivo.

## slide 1: o gancho

- Lista: "[5, 6 ou 7] [coisas] que [resultado]". Três itens parecem pouco para arrastar.
- Primeira pessoa: "eu" conta o que funcionou; "você" soa como ordem.
- Situação real de quem corre, nunca funcionalidade do app.
- Segunda linha menor, entre parênteses, com um motivo extra: "(a 3 mudou tudo)".
- Até 12 palavras. Promessa clara; pergunta e frase solta não prometem nada.
- Rosto ajuda quando faz sentido; o texto pesa mais que a foto.

## o corpo

- Cada slide entrega uma coisa útil. Slides numerados (1, 2, 3...) para mostrar progresso.
- 5 a 10 slides; na dúvida, mais. Post de 1 a 3 slides quase sempre perde.
- Texto em todo slide. Linhas curtas, uma ideia por linha.
- Números concretos: "rodagem de 20 min a cada 2 dias", não "corra com frequência".
- Cada slide dá motivo para arrastar ao próximo.
- Lista de apps de corrida com o SeuCorre no meio também conta.

## onde o SeuCorre entra

- Nunca no começo. Entra no slide 4 ou depois, quando o post já entregou valor.
- Entra como parte da história: o slide 1 prende, o meio cria tensão (um problema, uma dúvida), o app aparece na virada e resolve, depois vem o desfecho.
- Print real do app sendo usado (`seucorre-midia\telas-video`), nunca página da loja nem tela inventada por IA.
- Em primeira pessoa: "o app que eu uso".

## último slide

- Termine na última dica, ou em "salva isso e me segue". O caminho até a lista de espera fica na legenda e na bio.
- Pitch no fim ("baixe", "link na bio") lembra que era anúncio e derruba salvamento.

## legenda

- Páginas temáticas: a primeira linha é `personagem fictícia do seucorre.`, para aparecer antes do corte da legenda.
- Uma ou duas frases de verdade sobre o tema.
- Uma linha com o convite para a lista de espera (ver "levar para a lista de espera").
- 4 a 6 hashtags.

## de onde vem o formato

- Copie o que já está fora da curva: uma conta de 3 mil views que bateu 150 mil está sinalizando. Procure no nicho de corrida e em nichos diferentes (skincare, fitness, estudo).
- Referência só entra se passar nas quatro:
  - 50 mil a 100 mil views ou mais
  - fácil de repetir em volume
  - postada nos últimos 30 dias
  - várias contas diferentes indo bem com ela
- Quatro esqueletos:
  - **funil da dor**: slide 1 numa dor específica, slides 2 e 3 fazem a pessoa pensar "isso sou eu", o app aparece funcionando
  - **lista**: 5 a 7 dicas, uma por slide; o mais salvo
  - **identidade**: quem a pessoa quer virar, imagem bonita e frase curta; picos menores, mais constante (casa com o tom Nike do `marketing.md`)
  - **tiro rápido**: 2 ou 3 slides para o que se explica sozinho; exceção

## assunto do dia

- O formato traz o arrastar; o assunto do dia traz o clique. Ache a ponte entre o assunto e o que o SeuCorre resolve.
- Fontes: Google Trends, o que corredores discutem no X e no Reddit na semana, calendário (provas grandes, Ano Novo, volta às aulas, feriados). Sons em alta no TikTok o Erick vê no celular.
- Assunto quente em 48 horas precisa do post nesse prazo.
- O Erick aprova toda ponte com assunto do dia antes de postar.

## visuais

- Foto real sempre que der.
- Imagem gerada por IA: mesmo cenário, mesma luz e cara de foto de celular, e marcada como conteúdo de IA na plataforma.

## espremer o vencedor

- Post que estoura vira modelo: mesma estrutura, mesmo gancho, mesmo fluxo, imagens trocadas e texto ajustado, dezenas de vezes, até parar de performar.
- Anote cada vencedor e cada flop com o porquê; cada flop vira regra do próximo lote.

## o que fica com o Erick

- Aprovar o lote, revisando no celular (legível, sem cara de IA, print real) antes de postar.
- Escolher quais posts fora da curva copiar.
- Responder comentários reais, rápido.
- Decidir o que matar e o que escalar.
