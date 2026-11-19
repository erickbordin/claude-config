# Montar o Claude do Erick neste PC

Instruções para o Claude Code. Siga na ordem, sem pular passo, e no fim mostre o que ficou pronto e o que falhou.

`<HOME>` é a pasta do usuário neste PC (`$HOME` no Git Bash). `<REPO>` é a pasta onde este repositório foi clonado.

## 1. Pré-requisitos

Confira cada um com `--version`; o que faltar, instale (no Windows, `winget`):

- Git e Git Bash (`Git.Git`)
- Node.js LTS (`OpenJS.NodeJS.LTS`): MCPs e skills rodam por `npx`
- GitHub CLI (`GitHub.cli`), depois `gh auth login`
- jq (`jqlang.jq`): a statusline usa
- Python 3 (`Python.Python.3.12`) e `pip install graphifyy`: skill `graphify`
- Opcional: Orca (orquestração de agentes), Java 17 (`Microsoft.OpenJDK.17`) para o backend do SeuCorre

## 2. Arquivos da pasta `~/.claude`

Copie de `<REPO>/home/` para `<HOME>/.claude/`:

- `CLAUDE.md`, `statusline.sh`, `keybindings.json`
- pastas `midias-sociais/`, `x/`, `linkedin/` (voz e regras das redes sociais)
- `settings.json`: antes de copiar, troque `C:\\Users\\KABUM` e `/c/Users/KABUM` pelo `<HOME>` deste PC, no mesmo formato

Crie também o arquivo vazio `<HOME>/.claude/.i-have-adhd-always` (deixa o modo i-have-adhd sempre ligado).

Se já existir algum desses arquivos, mostre a diferença e pergunte antes de sobrescrever.

## 3. Skills

Copie cada pasta de `<REPO>/skills/` para `<HOME>/.claude/skills/`.

Uma skill fica fora do repo por tamanho (54 MB); instale pelo GitHub:

```bash
npx skills add Vincentwei1021/video-shotcraft -g -a claude-code
```

Se o comando falhar, clone `https://github.com/Vincentwei1021/video-shotcraft` e copie a pasta para `<HOME>/.claude/skills/video-shotcraft/`.

As skills `remotion-*` e `video-shotcraft` pedem `npm i` dentro do projeto de vídeo quando forem usadas, não agora.

## 4. Plugins

```bash
claude plugin marketplace add anthropics/claude-plugins-official
claude plugin marketplace add DietrichGebert/ponytail
claude plugin marketplace add obra/superpowers-marketplace
claude plugin marketplace add ayghri/i-have-adhd
claude plugin marketplace add goul4rt/lgpd-skills
claude plugin marketplace add Jakeschincariol/linkedin-agent-skill

claude plugin install ponytail@ponytail
claude plugin install superpowers@superpowers-marketplace
claude plugin install i-have-adhd@i-have-adhd
claude plugin install lgpd-skills@lgpd-skills
claude plugin install linkedin-agent@linkedin-agent-skill
claude plugin install mattpocock-skills@claude-plugins-official
claude plugin install context7@claude-plugins-official
claude plugin install jdtls-lsp@claude-plugins-official
claude plugin install typescript-lsp@claude-plugins-official
claude plugin install claude-md-management@claude-plugins-official
claude plugin install commit-commands@claude-plugins-official
claude plugin install stripe@claude-plugins-official
claude plugin install claude-code-setup@claude-plugins-official
```

Se um `install` falhar, tente o mesmo pelo `/plugin` dentro do Claude e anote no relatório final.

## 5. MCP do usuário

Para cada servidor em `<REPO>/home/mcp-usuario.json`, rode `claude mcp add` no escopo do usuário. Hoje é só um:

```bash
claude mcp add chrome-devtools -s user -- npx -y chrome-devtools-mcp@latest
```

Os conectores do claude.ai (Google Drive, Calendar, Render, Claude Docs) vêm com a conta; não precisa instalar. Os MCPs do projeto SeuCorre (`supabase`, `render`, `stripe`) estão no `.mcp.json` do próprio repo e pedem login no primeiro uso: `/mcp` → servidor → Authenticate.

## 6. Memória

Cada pasta em `<REPO>/memoria/` tem o nome do projeto no formato do Claude: o caminho com `:`, `\` e `/` trocados por `-`. Exemplo: `C--Users-KABUM-Desktop-seucorre` era `C:\Users\KABUM\Desktop\seucorre`.

1. Pergunte onde o projeto SeuCorre foi clonado neste PC.
2. Converta esse caminho para o mesmo formato.
3. Copie o conteúdo da pasta para `<HOME>/.claude/projects/<caminho convertido>/memory/`.

## 7. Conferir

1. `claude plugin list` mostra os 13 plugins ligados.
2. `claude mcp list` mostra `chrome-devtools`.
3. `ls ~/.claude/skills | wc -l` dá 49 ou mais.
4. Peça ao Erick para abrir uma sessão nova: a statusline aparece e a resposta vem no formato do i-have-adhd.

## O que não vem neste repo

- Login do Claude e do `gh`: o Erick faz no PC novo.
- Histórico de conversas, cache e credenciais (`.credentials.json`, `history.jsonl`).
- `.env` e segredos de projetos.
