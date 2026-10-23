# Prompt pronto — instalar OpenJarvis (colar no agente)

Copia o bloco abaixo e cola no Claude Code (ou agente de terminal equivalente).

---

```text
Instala o OpenJarvis (assistente de IA local, projeto open-source tipo Stanford/open-jarvis)
do zero neste computador e configura voz em português (pt-BR).

Faz o seguinte, passo a passo, e para se algo exigir decisão minha:

1. Confirma que existem: Git, e um runtime moderno (uv ou Node, conforme o projeto oficial exigir).
2. Obtém a documentação/repositório OFICIAL actual do OpenJarvis (não inventes URLs).
3. Clona o repositório oficial e corre o instalador oficial recomendado no README.
4. Instala/garante Ollama se o OpenJarvis depender dele.
5. Faz pull de um modelo local adequado:
   - Preferência: Gemma via Ollama (usa o tag oficial actual; se o PC for fraco, escolhe variante pequena).
6. Configura STT local em português (pt-BR), de preferência faster-whisper ou o que o projeto documentar — áudio não deve ir para a nuvem.
7. Configura TTS local em português (ex.: Kokoro com voz pt como pf_dora, se disponível).
8. Corre o comando de diagnóstico do projeto (ex.: jarvis doctor) e corrige o que faltar.
9. Opcional no fim: prepara wake por "duas palmas" (jarvis-show / equivalente) se o projeto permitir.
10. Diz-me como iniciar a interface no browser e qual o URL (ex.: localhost:5173).

Responde em português. Não apagues ficheiros meus fora da pasta do projeto. Não faças commit com secrets.
```

---

Depois de colar, deixa o agente trabalhar e responde só quando ele perguntar.
