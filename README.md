# Jarvis Local

**O teu Jarvis em um fim de semana** — assistente de IA local, em português, que roda no teu PC.

Baseado no fluxo OpenJarvis (Stanford) + Ollama + voz local (STT/TTS).

> Não é o Jarvis dos filmes com servidores da Stark Industries.  
> É um assistente **local**, que te escuta, responde em português e pode acordar com duas palmas.

---

## O que vais ter no domingo à noite

- Escuta em português (áudio não sai do PC)
- Responde em português com voz local
- Modelo de IA a correr na tua máquina (sem API paga obrigatória)
- Interface no browser (`localhost`)
- Opcional: acordar com duas palmas

---

## Requisitos

| Item | Mínimo recomendado |
|------|--------------------|
| SO | Windows 10/11, macOS ou Linux |
| RAM | 8 GB (16 GB+ confortável) |
| Disco | ~15 GB livres (modelo + deps) |
| Ferramentas | Git, terminal, browser |

PC mais fraco → usa um modelo menor no Passo 4.

---

## Os 9 passos (resumo)

| # | Passo | O quê |
|---|--------|--------|
| 1 | **Casa** | O teu PC (Mac ou Windows) |
| 2 | **Engenheiro** | Claude Code (ou outro agente de terminal) |
| 3 | **Motor** | OpenJarvis |
| 4 | **Cérebro** | Ollama + Gemma (ou modelo menor) |
| 5 | **Ouvidos** | STT local (ex: faster-whisper), pt-BR |
| 6 | **Voz** | TTS local (ex: Kokoro / voz pt) |
| 7 | **Revisão** | `jarvis doctor` — confere o que falta |
| 8 | **Duas palmas** | Wake word / gesto (não vem de fábrica) |
| 9 | **Interface** | UI no browser |

Guia detalhado: **[docs/SETUP.md](docs/SETUP.md)**  
Prompt pronto para colar: **[prompts/instalar-openjarvis.md](prompts/instalar-openjarvis.md)**

---

## Arranque rápido

```bash
# 1. Clona este repo (guias + prompts)
git clone https://github.com/Kratos778/Jarvis-Local.git
cd Jarvis-Local

# 2. Lê o setup
#    docs/SETUP.md

# 3. Cola o prompt em prompts/instalar-openjarvis.md
#    no teu agente de terminal (Claude Code, etc.)
```

Scripts auxiliares (Linux/macOS):

```bash
chmod +x scripts/*.sh
./scripts/check-deps.sh
```

---

## Estrutura do repositório

```
Jarvis-Local/
├── README.md
├── docs/
│   ├── SETUP.md              # Guia completo dos 9 passos
│   └── TROUBLESHOOTING.md    # Problemas comuns
├── prompts/
│   ├── instalar-openjarvis.md
│   ├── configurar-voz-pt.md
│   └── duas-palmas.md
├── scripts/
│   ├── check-deps.sh
│   └── doctor.sh
└── config/
    └── example.env
```

Este repositório **não substitui** o OpenJarvis upstream — organiza o setup, os prompts em português e os checks para não te perdere no meio do caminho.

Upstream útil:
- [OpenJarvis](https://github.com/open-jarvis) (verificar URL oficial actual)
- [Ollama](https://ollama.com)

---

## Aviso importante

- Tudo o que corre **local** depende do hardware do teu PC.
- Modelos grandes precisam de RAM/VRAM a sério.
- “Duas palmas” e voz perfeita em pt-BR exigem configuração extra — os prompts em `prompts/` ajudam, mas podem precisar de ajustes.
- Não partilhes chaves de API neste repo.

---

## Package / identidade

Projecto de setup pessoal — **Elizier Dias** / Kratos778.

```
Repo: https://github.com/Kratos778/Jarvis-Local
```

---

**Às tuas ordens.**
