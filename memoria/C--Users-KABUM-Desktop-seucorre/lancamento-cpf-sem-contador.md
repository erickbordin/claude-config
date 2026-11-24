---
name: lancamento-cpf-sem-contador
description: "SeuCorre lança no CPF, sem contador nem advogado; endereço de casa só por variável; Gemini pago só no lançamento"
metadata:
  node_type: memory
  type: project
  originSessionId: 92698373-af0e-4b8c-9388-893002a0b6c5
  modified: 2026-11-24T00:28:43.531Z
---

Em 23/11/2026 o Erick decidiu: não tem contador, os textos legais são feitos por nós estudando a lei com as skills de LGPD; o lançamento é no CPF; o endereço físico exigido pelo Decreto 7.962/2013 é o de casa; e o Gemini só é pago quando o SeuCorre estiver pronto e na App Store.

**Why:** evitar custo antes de ter receita. O Marco Civil, art. 15, só obriga pessoa jurídica a guardar logs de acesso por 6 meses.

**How to apply:** o endereço e o CPF nunca entram no código nem na conversa, só em variáveis de ambiente. Se abrir CNPJ, a guarda de logs passa a ser obrigatória. O paywall promete ajuste pelo check-in, que não funciona com `IA_PROVIDER=manual`: enviar à Apple com liberação manual e, depois de aprovado, ligar o billing do Gemini e `IA_PROVIDER=gemini` antes de abrir ao público. Estudo e dúvidas em `.lgpd/policies/base-legal-v2.md`. Ligado a [[lancar-na-app-store]] e [[ia-gemini-nao-deepseek]].
