---
name: narracao-voicestudio
description: "Narração dos vídeos no VoiceStudio com voz feminina jovem (instruct + seed 11), gerada frase por frase; aprovada em 16/11/2026"
metadata:
  node_type: memory
  type: project
  originSessionId: e00bf3a7-df51-4fa5-ad19-e61309fd80f2
  modified: 2026-11-16T20:41:03.238Z
---

Narração sempre no VoiceStudio (API `http://127.0.0.1:3900`, app aberto, GPU RTX 3050). Voz aprovada em 16/11/2026 no vídeo 1: feminina jovem, `instruct="female, young adult, moderate pitch"`, `seed=11`, `speed=1.1`, `language=Portuguese`. Gerar com `Desktop\Editor de Vídeo\ferramentas\narrar.py`, uma frase por vez.

**Why:** a voz clonada do Erick (perfil `erick`, `f71633c4`) foi descartada depois de ouvida no vídeo inteiro: "muito robotizado", fim das palavras suspenso. A causa principal era gerar o texto inteiro de uma vez com `speed=0.8`; frase por frase, aparando silêncio e com pausa de 0,3 s, ficou natural. Entre mulher e homem jovem (`seed=7`) ele escolheu a mulher.

**How to apply:** nunca gerar texto inteiro nem `speed` < 1. Detalhes e comandos em `Editor de Vídeo\GUIA_DE_ESTILO.md`. Ver [[editor-de-video]].
