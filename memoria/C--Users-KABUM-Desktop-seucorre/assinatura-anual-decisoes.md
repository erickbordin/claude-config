---
name: assinatura-anual-decisoes
description: Decisões de 06/11/2026 sobre a assinatura anual do seucorre e a ordem do trabalho até o lançamento
metadata:
  node_type: memory
  type: project
  originSessionId: f76f2bef-8649-4b0b-9ba3-ace06ffb940e
  modified: 2026-11-18T17:10:16.555Z
---

Decidido pelo Erick em 06/11/2026:
- Anual de R$ 179,90 (confirmado pelo Erick em 18/11/2026; antes era R$ 199), ao lado da mensal de R$ 19,90 (não no lugar).
- Pix avulso de 365 dias também, sem renovar sozinho.
- Lança já com a anual.
- Reembolso: integral em 7 dias (CDC art. 49); depois disso, cancelar só desliga a renovação, sem devolução proporcional.
- Aviso de renovação da anual por e-mail 30 e 7 dias antes, com link de cancelar.
- Mensal → anual pelo portal da Stripe, troca imediata com crédito proporcional.
- Paywall com a anual pré-selecionada: "R$ 14,99/mês, cobrado R$ 179,90 por ano", mensal ao lado.
- Pix de 365 dias avisa 30, 7 e 1 dia antes de vencer.
- Diagnóstico do `lgpd-audit` logo depois da anual; RIPD e política final na fase do advogado.
- Ordem: anual primeiro. Termos/advogado/contador, Stripe em modo real e infra paga ficam por último (envolvem pagar); o Erick já está providenciando Stripe e infra.

**Why:** monetizar com receita recorrente; a anual reduz o churn depois da prova, já que a mensal já cobre vários planos.

**How to apply:** ao implementar, o preço vem do backend; atualizar Termos e `VERSAO_DOS_TERMOS` antes do lançamento. LGPD com [[lgpd-skills-plugin]].
