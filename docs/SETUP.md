# Setup — Jarvis em 9 passos

Segue por ordem. Se algo falhar, vê [TROUBLESHOOTING.md](TROUBLESHOOTING.md).

---

## Passo 1 — Dê uma Casa

Precisas de um computador (Mac ou Windows; Linux também serve).

- Garante espaço em disco (~15 GB)
- Atualiza o sistema
- Instala [Git](https://git-scm.com)

---

## Passo 2 — Instale o Engenheiro

No vídeo: **Claude Code** (agente que lê o prompt e executa no terminal).

Alternativas se não usares Claude Code:
- Cursor Agent / outro coding agent no terminal
- Ou fazes os comandos **à mão** com o guia + prompts desta pasta

Instalação típica (exemplo do vídeo — confirma sempre a URL oficial actual):

```bash
curl -fsSL https://claude.ai/install.sh | bash
```

Objetivo: teres um agente que clona, instala e configura por ti quando colas o prompt.

---

## Passo 3 — Instale o Motor (OpenJarvis)

OpenJarvis = sistema que transforma um modelo de IA num assistente de verdade.

**Opção A — Prompt pronto (recomendado)**  
Abre `prompts/instalar-openjarvis.md`, copia tudo, cola no agente.

**Opção B — Manual (resumo)**

```bash
# Exemplo — ajusta à documentação oficial do OpenJarvis no momento em que instalares
git clone <URL_OFICIAL_OPENJARVIS>
cd OpenJarvis   # ou nome da pasta do projeto
# seguir instalador oficial (uv / pip / script install.sh)
```

No vídeo aparecia algo na linha de:

```bash
curl -fsSL open-jarvis.github.io/OpenJarvis/install.sh | bash
```

**Confirma sempre o repositório e o script oficiais** antes de correr `curl | bash`.

---

## Passo 4 — Escolha o Cérebro

| Opção | Notas |
|--------|--------|
| **Nuvem** | Pago / dados saem do PC |
| **Gigante** | Pesado demais para muitos PCs |
| **Gemma 4 (via Ollama)** | Roda no PC, de graça (se o hardware aguentar) |
| **Mini** | PC fraco — conversa mais leve |

### Ollama + Gemma (exemplo do vídeo)

1. Instala [Ollama](https://ollama.com)
2. Puxa o modelo:

```bash
ollama pull gemma2:9b
# ou o tag exacto que o teu setup OpenJarvis documentar
# (no vídeo: gemma4 / gemma4:e4b — usa o nome oficial actual no Ollama)
```

PC fraco → modelo mais pequeno, por exemplo:

```bash
ollama pull gemma2:2b
```

---

## Passo 5 — Dê Ouvidos

STT local para o áudio **não sair** do computador.

- Ferramenta referida no vídeo: **faster-whisper**
- Idioma: **português (pt-BR)**

Prompt de ajuda: `prompts/configurar-voz-pt.md`

Exemplo de pedido ao agente:

```text
Configure a escuta em português (pt-BR) com faster-whisper, tudo local.
```

---

## Passo 6 — Dê Voz

TTS local em português.

- No vídeo: **Kokoro** + voz **pf_dora** (pt)
- Tudo local → sem custo de API de voz

Exemplo de pedido:

```text
Use a voz pf_dora do Kokoro para respostas em português, local.
```

---

## Passo 7 — Faça a Revisão

Um comando que confere o que está instalado e o que falta.

No vídeo:

```bash
uv run jarvis doctor
```

Neste repo tens um check genérico:

```bash
./scripts/doctor.sh
```

Corre o doctor do OpenJarvis se existir no teu install — é a fonte de verdade.

---

## Passo 8 — As duas palmas

**Não vem de fábrica.** É feature extra.

Prompt: `prompts/duas-palmas.md`

Ideia: uma linha no prompt pede ao agente para criar o `jarvis-show` / wake com duas palmas.

Depois: bater palmas → Jarvis online.

---

## Passo 9 — Ligue a Interface

UI no browser (no vídeo: `localhost:5173` ou similar).

```bash
# comando típico — usa o que o OpenJarvis documentar
jarvis
# ou: npm run dev / uv run ...
```

Abre o URL que o terminal mostrar. Deves ver algo como **J.A.R.V.I.S. ONLINE · ouvindo...**

---

## Checklist final

- [ ] Ollama a correr (`ollama list`)
- [ ] Modelo puxado
- [ ] OpenJarvis instalado
- [ ] STT pt-BR ok
- [ ] TTS pt ok
- [ ] `jarvis doctor` (ou `./scripts/doctor.sh`) sem erros críticos
- [ ] Interface abre no browser
- [ ] (Opcional) duas palmas

**No domingo à noite:** escuta, responde em português, e se configuraste — acorda com duas palmas.
