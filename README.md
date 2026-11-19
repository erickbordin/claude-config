# claude-config

Meu Claude Code (CLAUDE.md, settings, skills, plugins, MCP e memória) para montar em qualquer PC.

## PC novo

1. Instale o Claude Code e faça login.
2. `gh repo clone erickbordin/claude-config` (ou `git clone`).
3. Abra o Claude dentro da pasta e peça: **"Leia o SETUP.md e monte meu ambiente."**

## Atualizar a partir deste PC

```bash
./exportar.sh && git add -A && git commit -m "chore: atualiza configuração" && git push
```

## O que tem aqui

- `home/`: arquivos de `~/.claude` (CLAUDE.md, settings, statusline, voz das redes)
- `skills/`: skills instaladas fora dos plugins
- `memoria/`: memória por projeto
- `SETUP.md`: o passo a passo que o Claude segue
