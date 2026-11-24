---
name: estrategia-slideshows-copycat
description: "Estratégia fechada em 24/11/2026 para slideshows de TikTok em escala (copycat dos virais, IA sem metadados, rascunho no TikTok, som sugerido por mim)"
metadata:
  node_type: memory
  type: project
  originSessionId: 78ded2fd-dae1-4065-be21-d1144801fbf5
  modified: 2026-11-24T22:08:55.913Z
---

Fechada com o Erick em 24/11/2026, a partir do post do Gabriel Buzzi (x.com/gabrielbuzziv/status/2109764044647436295) e das respostas dele.

Produção, no ciclo de sexta:
1. Pesquisar os virais de corrida dos últimos 7 dias numa conta de pesquisa (só lê, nunca posta), logada no Chrome. O Erick cria no celular e aquece 1 a 2 dias (não posta, então não precisa dos 7).
2. Copycat: copiar sequência de slides, gancho, ordem dos argumentos e estilo dos slideshows da concorrência. Texto reescrito e imagem gerada do zero; nunca a foto nem a frase literal deles.
3. Fotos de IA no ChatGPT ou Gemini grátis, salvas sem metadados (decisão do Erick, ciente do risco de o TikTok detectar mesmo assim). O pedido do ciclo autoriza baixar as imagens geradas.
4. Slides montados por código, com o SeuCorre no meio da sequência.
5. Repost: só post acima da média, depois de 30 dias, com capa e gancho novos, no máximo 1 por semana por conta.

Postagem (caminho B): o slideshow vai para a caixa de rascunhos do TikTok no celular do Erick, com legenda pronta e sugestão de som; ele escolhe o som final e posta (~1 min por post). 3 por dia por conta: 12h00, 18h00, 20h30.

Limites e testes:
- Só as 2 contas (Caio e Duda) até 24/12/2026; reavaliar com 30 dias de dados.
- ChatGPT Plus: 1 semana no grátis contando imagens (~126 por semana); pagar só se o grátis cobrir menos da metade.
- Rascunho no TikTok: 1 semana numa conta só antes das duas. Ainda falta descobrir qual ferramenta grátis manda para a caixa de rascunhos (API oficial do TikTok tem; Buffer não confirmado).
- Placar de quinta conta views, cliques e inscrições pela bio (`?origem=tiktok`).

**Why:** o Erick quer o mínimo de envolvimento pessoal no marketing e volume com formato validado.
**How to apply:** substitui partes de [[modelo-copiar-concorrentes]], [[musica-so-o-erick]], [[bots-de-marketing-orca]] e [[video-so-salvar-nao-postar]]; som sempre um que esteja em alta ou que um vídeo/reel do TikTok usou. Agente continua sem postar e sem entrar logado nas contas que postam.

**Onde roda (Q16, 24/11):** os passos com navegador (pesquisa, fotos de IA, rascunho) rodam no Claude Code com o Claude in Chrome, quando o Erick pede "rode a coleta" na quinta depois das views (`Desktop\conteudo\bots\instrucoes\coleta.md`). O OpenBot segue sem `browser_prepare` e continua o ciclo de sexta a partir dos arquivos (`virais.md`, fotos em `fonte\fotos`).
