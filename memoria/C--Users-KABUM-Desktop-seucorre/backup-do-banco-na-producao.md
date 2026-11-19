---
name: backup-do-banco-na-producao
description: Backup diário do banco (R2 + age + GitHub Action) está adiado até o lançamento; lembrar de ligar quando for para produção
metadata:
  node_type: memory
  type: project
  originSessionId: f76f2bef-8649-4b0b-9ba3-ace06ffb940e
  modified: 2026-11-06T21:02:55.728Z
---

O backup diário do Supabase não está ligado e só entra na hora de colocar o SeuCorre em produção.

**Why:** o app ainda não está em produção (só testes, banco com dados de teste). O Supabase Free não faz backup, então antes de ter usuário real o backup precisa existir.

**How to apply:** ao falar de lançamento, produção ou checklist de deploy, lembrar o Erick deste item e retomar de onde parou:
- Já pronto no repo (PR #157): `.github/workflows/backup-banco.yml` e `docs/backup-do-banco.md`.
- Já feito na Cloudflare: conta criada e assinatura do R2 ativada (plano grátis, 10 GB). Falta criar o bucket `seucorre-backup` com regra de apagar em 7 dias.
- Falta: token da API do R2, `age-keygen` (chave privada guardada fora do repo), e os secrets do GitHub (`SUPABASE_DB_URL` com a senha codificada, `BACKUP_AGE_PUBLIC_KEY`, `R2_ACCOUNT_ID`, `R2_ACCESS_KEY_ID`, `R2_SECRET_ACCESS_KEY`, `R2_BUCKET`).
- Depois: rodar o workflow uma vez e testar a restauração antes de confiar nele.
- Banco no Supabase São Paulo (session pooler `aws-1-sa-east-1.pooler.supabase.com:5432`, usuário `postgres.ubezbepopbblksqbglnb`); backend já roda no Render apontando para ele.

Junta com os outros itens "por último" de produção: [[assinatura-anual-decisoes]].
