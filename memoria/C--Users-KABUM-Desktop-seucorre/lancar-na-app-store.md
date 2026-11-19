---
name: lancar-na-app-store
description: "SeuCorre é só app, sem versão web; primeiro lançamento na App Store (iOS); o site de divulgação seucorre.app é permanente"
metadata:
  node_type: memory
  type: project
  originSessionId: 97b90067-b1a8-44e0-a665-cf9963bd1d58
  modified: 2026-11-17T00:00:00.000Z
---

Desde 09/11/2026 o SeuCorre não tem versão web do produto: é só app, e o primeiro lançamento é na App Store (iOS). GPS precisa funcionar no app com a tela bloqueada, e o Apple Watch entra porque muita gente corre só com o relógio. Em 17/11/2026 o Erick confirmou: o site de divulgação `seucorre.app` (repo `erickbordin/seucorre-site`) existe sempre, antes e depois do lançamento; "sem site" quer dizer sem web app.

**Why:** PWA não grava GPS com a tela bloqueada; o público corre com relógio.

**How to apply:** o CLAUDE.md do projeto já diz isso (PR da branch `trocar-de-webApp-para-app`). Nunca propor desligar o seucorre.app. Teste no iOS antes da conta Apple: Safari em tela cheia e o workflow `iOS sem assinatura` do Codemagic (`codemagic.yaml`, grupo `seucorre-app` com `VITE_API_URL=https://seucorre-api.onrender.com`) + Sideloadly com Apple ID grátis (vale 7 dias); funcionou em 17/11/2026. Build pode ficar minutos em waiting na fila da M2: é só esperar. A gamificação (spec em `docs/superpowers/specs/2026-11-09-gamificacao-design.md`) espera o GPS. Cobrança só pela loja: [[sem-stripe-so-lojas]], [[assinatura-anual-decisoes]].
