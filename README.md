# flux-llm-docker
Unoficial Docker image for container hosted in nshadov/flux-llm of https://github.com/paradigmxyz/flux

## Build yourself

```
docker build -t nshadov/flux-llm .
```

## Run

```
docker run --pids-limit 50 --privileged=false --security-opt=no-new-privileges --cap-drop=all --rm -d -p 80:5173/tcp --name flux-llm nshadov/flux-llm:latest 
```

## Flux

> Flux is a power tool for interacting with large language models (LLMs) that **generates multiple completions per prompt in a tree structure and lets you explore the best ones in parallel**.
>
> Flux's tree structure allows you to:
> * Get a wider variety of creative responses
> * Test out different prompts with the same shared context
> * Use inconsistencies to identify where the model is uncertain
> 
> It also provides a robust set of keyboard shortcuts, allows setting the system message and editing GPT messages, autosaves to local storage, uses the OpenAI API directly, and is 100% open source and MIT licensed.

![Flux Tree Graph](https://github.com/paradigmxyz/flux/raw/main/public/meta-full.png)