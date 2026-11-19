---
name: sem-stripe-so-lojas
description: Cobrança só pelas lojas (Apple na estreia, Google depois); Stripe e Pix saem; sem versão web paga
metadata:
  type: project
---

Desde 16/11/2026 o Erick decidiu: sem Stripe e sem versão web do produto (o site de divulgação seucorre.app continua); o SeuCorre é só app e cobra só pela compra da loja (Apple primeiro, Google Play depois da issue #175).

**Why:** o produto é só app (ver [[lancar-na-app-store]]); o preço anual de R$ 179,90 já está no código, mas o preço da Stripe seguia em R$ 199 e derrubou o deploy do `seucorre-api` na conferência de `PrecosConferidosNaStripe`.

**How to apply:** não propor Stripe, Pix nem portal web; preço vem da Apple via RevenueCat. Em produção o backend ainda exige as variáveis `STRIPE_*` (`PagamentoConfiguradoEmProducao`), então tornar a Stripe opcional é o primeiro passo; remover o resto do código da Stripe é tarefa à parte. Corrigir "Apple Pay" para compra na App Store (Apple Pay não vale para assinatura digital). Ligado a [[assinatura-anual-decisoes]].
