---
name: marketing-seucorre
description: Regras do marketing do SeuCorre no TikTok, Instagram e X. Use ao produzir, planejar ou analisar conteúdo, carrossel, narração, vídeo ou referência de concorrente para @seucorre, @seucorre.app, @erickbordindev e as páginas temáticas.
---

# marketing-seucorre

## Estado atual (2026-11-08)

- **Produção pausada.** Não gerar vídeo, post nem carrossel até o Erick dar o aval.
- **Novo modelo:** parar de inventar conteúdo. O Erick coleta concorrentes e referências que deram certo em `C:\Users\KABUM\Desktop\seucorre-midia\captacao-de-conteudo\captacao.md`. Ao receber "analisa", ler o arquivo e adaptar formato, estrutura e gancho ao SeuCorre. Nunca copiar vídeo, texto ou voz de outra pessoa. Registrar a fonte de cada referência.
- **Não postar nada** em TikTok, Instagram nem X (bloqueio de IP e impressão digital no TikTok). Só salvar para o Erick postar pelo celular. Não abrir TikTok nem Instagram no navegador. O X só para leitura.

## Contas

- TikTok `@seucorre`, Instagram do produto `@seucorre.app`, X `@erickbordindev`.
- Nunca o Instagram pessoal `@erick.sbordin`.
- **Páginas temáticas** (decisão do Erick, 18/11/2026): contas extras de corrida no TikTok e no Instagram, cada uma em torno de uma persona, sem a marca no nome nem na bio; o SeuCorre vive dentro do conteúdo. Regras:
  - persona inventada com foto própria ou licenciada, nunca se passando por uma pessoa real
  - conta nova aquece 20 min por dia antes do primeiro post: seguir, curtir e salvar conteúdo de corrida
  - as contas nunca comentam nem interagem entre si (a plataforma lê como comportamento coordenado e bane em bloco)
  - o Erick cria e posta pelo celular, como nas contas do produto
  - bio e primeira linha da legenda declaram "personagem fictícia" do SeuCorre (publicidade identificada, CDC art. 36 e CONAR; decisão do Erick, 22/11/2026)
  - personas, bios, links e @ de cada conta: `C:\Users\KABUM\Desktop\seucorre-midia\paginas-tematicas.md`

## Carrossel

- Todo carrossel segue `carrossel.md` (nesta pasta): métrica, gancho, corpo, onde o app entra, último slide, legenda, formatos, assunto do dia e espremer o vencedor. O visual continua no `marketing.md`.
- Carrossel da conta da marca (`@seucorre`, `@seucorre.app`) usa o visual do carrosel-01: no `dados.js`, `pagina: 'fixado.html'` (template em `lote-01\fonte`, copiado do HTML original do Claude Design). Cada slide escolhe um layout (`lado`, `faixa`, `direita`, `centro`), uma etiqueta no topo e o logo ou "SeuCorre Club"; sem numeração e sem celular com print. Exemplo pronto: os fixados em `conteudo\imagens\fixados\` (`roteiro.md`). Carrossel das páginas temáticas segue no `carrossel.html`.

## Narração: usar o VoiceStudio

- Toda narração de áudio é gerada no **VoiceStudio** (instalado no PC do Erick, versão 0.5.7, em `%LOCALAPPDATA%\Programs\VoiceStudio`).
- API local: `http://127.0.0.1:3900` (`/health`, `/docs`, `/openapi.json`). O app precisa estar aberto. A geração usa a GPU NVIDIA RTX 3050.
- **Voz: feminina jovem do VoiceStudio** (`instruct="female, young adult, moderate pitch"`, `seed=11`, `speed=1.1`), aprovada em 16/11/2026, gerada frase por frase com `Desktop\Editor de Vídeo\ferramentas\narrar.py`. A voz clonada do Erick foi descartada. Processo completo em `Desktop\Editor de Vídeo\GUIA_DE_ESTILO.md`.
- Qualidade em pt-BR ainda não testada. Se for narrar, fazer primeiro um teste curto e deixar o Erick ouvir.

## Saída

- Vídeos: `C:\Users\KABUM\Desktop\seucorre-midia\tiktok\AAAA-MM-DD-slug\` com `tiktok\` (só SFX, sem trilha; ele escolhe a música no app) e `instagram\` (trilha CC0 embutida, licença registrada em `sons\LICENCAS.md` do repo `conteudo`), cada um com `legenda.md`.
- Posts do X: `C:\Users\KABUM\Desktop\seucorre-midia\x\AAAA-MM-DD.md`.
- Carrosséis: `C:\Users\KABUM\Desktop\conteudo\imagens\lote-NN\<código>\` com `instagram\` (1080×1350), `tiktok\` (1080×1920) e `legenda.md`, mais `roteiro.md` por lote. Gerador em `lote-01\fonte`: texto e foto de cada slide em `dados.js` (campo `lote` escolhe a pasta), depois `node renderizar.mjs <códigos>`; fotos do Unsplash em `fonte\fotos` com `LICENCAS.md`.
- A pessoa da foto tem o gênero da persona (marina, duda, lia e nina são mulheres; caio e theo, homens); grupo, multidão e foto sem pessoa servem a todos. Foto nova entra classificada em `MULHER` ou `HOMEM` de `fonte\genero.mjs`, e `node genero.mjs` passa antes de renderizar.
- O Erick posta a partir de `C:\Users\KABUM\Desktop\conteudo\postar\<persona>\<data>\` (cópias com a ordem do dia e a `legenda.md`, mais `calendario.md` por persona). Carrossel novo entra no `CALENDARIO` de `lote-01\fonte\organizar.mjs`; depois `node organizar.mjs <data de início>` refaz as pastas.
- Prints da Duda (`telas-video\duda-*.png`) vêm de conta de teste em produção: sem assinatura só a semana 1 aparece, então não há tela de caminhada com trote.
- Máxima qualidade: master crf=1 e upload em 2 passes de cerca de 9,5 MB.
- Registro em `C:\Users\KABUM\Desktop\conteudo\videos\fila\` e `~/.claude/midias-sociais\`.

## Regras de conteúdo

- Voz do Erick (`conteudo\voice.md`): tudo minúsculo, sem emoji, sem travessão, sem piada, sem "assessoria".
- **Antes de criar qualquer peça, leia `C:\Users\KABUM\Desktop\seucorre-midia\marketing.md`**: público, tom, visual aprovado, inspirações e features do momento, escritos pelo Erick. Ele vale sobre as regras desta skill.
- Sem promessa de saúde ou lesão. Dado fictício no app (Ana, Bia). Número só real, com data e "amostra pequena".
- Oferta: semana 1 grátis, R$ 19,90/mês ou R$ 179,90/ano. Antes da App Store, o conteúdo converte para a lista de espera em `www.seucorre.app` (primeiro mês grátis, os 100 primeiros testam antes), com `?origem=` por conta; detalhes em `carrossel.md`.
- Só prometer o que o app entrega de verdade (conferir no código).
- Custo zero: sem gasto até ter receita.

## Modelos

- Delegar produção a subagentes `model: opus`, effort `high`. Nunca xhigh nem ultra.

## Memória relacionada

`modelo-copiar-concorrentes`, `video-so-salvar-nao-postar`, `x-so-salvar-md`, `musica-so-o-erick`, `nunca-instagram-pessoal`.
