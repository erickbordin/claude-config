---
name: economia-de-tokens
description: "Regras para gastar menos tokens em execução de plano, revisão, prints e conversa longa"
metadata:
  node_type: memory
  type: feedback
  originSessionId: 97b90067-b1a8-44e0-a665-cf9963bd1d58
  modified: 2026-11-12T21:30:27.166Z
---

Ao executar um plano (subagent-driven-development ou não):
- Uma revisão só, no fim da branch, em Sonnet. Sem revisor por tarefa e sem revisão final em Opus.
- Correção pequena (poucas linhas) é conferida pelo controlador no navegador ou por grep/build, sem re-revisão por subagente.
- Conferência visual por script (medidas, estados, `scrollWidth`) e print só do resultado final, não de cada passo.
- Antes de rodar um processo caro (muitos subagentes, Opus, muitos prints), dizer o custo estimado em uma linha.
- Assunto novo pede sessão nova; não carregar skills grandes sem necessidade.

**Why:** em 12/11/2026 o redesign do site (9 tarefas) usou ~30 subagentes (revisor por tarefa, re-revisões de correções de 1 linha, revisão final em Opus de 144 mil tokens) e dezenas de screenshots; o Erick viu o limite de 5 horas acabar enquanto não estava mexendo e pediu para gastar menos.

**How to apply:** vale por cima do passo de revisão por tarefa do subagent-driven-development; implementadores continuam em Sonnet 5.5 (CLAUDE.md global). Ver [[claude-md-global-vence]].
