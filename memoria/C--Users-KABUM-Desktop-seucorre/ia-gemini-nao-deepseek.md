---
name: ia-gemini-nao-deepseek
description: Provider de IA do SeuCorre fica no Gemini pago; DeepSeek descartado em 09/11/2026
metadata:
  node_type: memory
  type: project
  originSessionId: eb333dab-d276-484d-b5dd-224154f06221
  modified: 2026-11-09T13:11:39.742Z
---

O provider de IA continua sendo o Gemini; a DeepSeek foi descartada pelo Erick em 09/11/2026. Produção liga `IA_PROVIDER=gemini` só depois de ativar o billing (a chave no Render hoje é a grátis e não roda em produção).

**Why:** dados de saúde iriam para a China sem cláusulas-padrão da ANPD (só sobraria consentimento do art. 33, VIII), e a economia é irrelevante no volume do SeuCorre (IA só no check-in e na reescrita).

**How to apply:** não sugerir DeepSeek nem trocar de provider por preço; ao ativar o billing, trocar `render.yaml`, `.env.production.example` e a linha do CLAUDE.md para `gemini`. Ver [[lgpd-skills-plugin]].
