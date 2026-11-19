---
name: mapa-na-corrida
description: "Mapa no resumo da corrida feito em 17/11/2026 (PR #195); mapa durante a corrida ficou fora a pedido do Erick"
metadata:
  node_type: memory
  type: project
  originSessionId: e4a1d260-47d5-4367-956d-153a0e860cd8
  modified: 2026-11-17T16:07:16.647Z
---

Em 17/11/2026 o Erick pediu mapa **só no resumo** (para postar), não durante a corrida. Entregue no PR #195 (branch `feat/mapa-no-resumo`): MapLibre + OpenFreeMap, zona de 200 m escondida em volta da largada e da chegada, botão Compartilhar (imagem de story).

Design: recusou 2 rodadas de conceitos inventados (pôster, faixa de chegada, número de peito); aprovou o resumo **na mesma linguagem das telas que o app já tem** (Treino/Hoje), mais animação de entrada.

**Why:** coerência com o app pesa mais que conceito novo para ele achar "premium".
**How to apply:** tela nova → partir dos prints reais do app (`seucorre-midia\telas-video`) e conferir renderizado antes de mostrar ([[trabalho-visual]]).
