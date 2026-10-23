# Troubleshooting

## `curl | bash` falhou / 404

A URL do instalador pode ter mudado. Vai ao repositório oficial do OpenJarvis e usa o README actual — **não confies só em links de vídeos antigos**.

## Ollama: modelo não encontrado

```bash
ollama list
ollama pull <nome-oficial-do-modelo>
```

Confirma o tag exacto em https://ollama.com/library

## Sem memória / PC a travar

- Usa modelo **mini** (2b / 3b)
- Fecha browser com muitas abas
- Evita STT+TTS+LLM tudo no máximo ao mesmo tempo

## Microfone não funciona

- Permissões do SO (macOS: Privacidade → Microfone)
- Testa o microfone noutro app
- Confirma que o STT aponta para o device certo

## Voz em inglês em vez de português

- Força idioma pt-BR no STT
- Confirma a voz TTS (pf_dora / equivalente pt)
- Reinicia o serviço depois de mudar config

## Porta do browser ocupada

```bash
# Linux/macOS — ver o que usa a porta 5173
lsof -i :5173
```

Muda a porta na config do OpenJarvis ou mata o processo antigo.

## Duas palmas não fazem nada

- Feature extra — confirma que o módulo foi gerado pelo prompt
- Ruído ambiente / microfone longe
- Threshold de deteção pode precisar de ajuste

## Android / telemóvel

Este setup é para **PC**. No telefone não corres OpenJarvis+Ollama+Gemma 4 da mesma forma. Para mobile, o caminho é outra app (API ou modelo minúsculo on-device).
