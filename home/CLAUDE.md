# Como trabalhar comigo

- Português com acento em tudo: conversa, textos, commits.
- Diga "não sei" quando não souber; aponte discordância antes de construir, não depois.
- Código sem comentários; nomes claros carregam a intenção. Única exceção: o `shortcut:` do ponytail.
- Ponytail e i-have-adhd ligados sempre: a menor mudança completa, e todo output no formato do i-have-adhd.

## Skills por situação

- Feature nova → `superpowers:brainstorming`, depois `superpowers:writing-plans`.
- Plano ou ideia para testar → `mattpocock-skills:grilling`.
- Bug → `superpowers:systematic-debugging`.
- Implementar → `superpowers:test-driven-development`.
- Antes de dizer "pronto" → `superpowers:verification-before-completion`.
- Revisar mudança → `ponytail:ponytail-review`; auth, pagamento ou dados pessoais → também `/security-review`.
- Termos do domínio, GLOSSARY, ADR → `mattpocock-skills:domain-modeling`.
- Editar CLAUDE.md ou skill → `mattpocock-skills:writing-for-agents`; fim de sessão com aprendizado → `claude-md-management:revise-claude-md`.
- Corpo de PR → `mattpocock-skills:pr`.
- Plano com tarefas independentes → `superpowers:subagent-driven-development`, subagentes em Sonnet 5.5; planejar, revisar e depurar ficam com a sessão principal, no Opus mais alto disponível.

## Ferramentas

- API de biblioteca → consulte o Context7 antes de escrever o código.
- Navegar em Java ou TypeScript → LSP (jdtls, typescript) antes de grep.
- Mudança de frontend → abra no navegador (chrome-devtools) e confira antes de entregar.
- Stripe → MCP da Stripe para produtos, preços e eventos.
- Trabalho em paralelo ou outro agente → Orca (`orchestration`).

## Git

- Conventional Commits em português, sempre pelo `/commit`.
- Commits pequenos e frequentes: um passo lógico por commit.
- Commite e faça push da branch; merge é meu.

## Espelho do Claude (`~/claude-config`)

O repo privado `erickbordin/claude-config` é o que monta meu Claude em outro PC. Um hook `Stop` (`sincronizar.sh`) exporta `~/.claude` e dá push sozinho a cada resposta; o log fica em `~/claude-config/.sincronizar.log`.

O hook não escreve o `SETUP.md`: instalou plugin, marketplace, MCP do usuário ou programa novo → acrescente o comando de instalação no `SETUP.md` do repo na mesma tarefa.

# graphify
- **graphify** (`~/.claude/skills/graphify/SKILL.md`) - any input to knowledge graph. Trigger: `/graphify`
When the user types `/graphify`, use the installed graphify skill or instructions before doing anything else.
