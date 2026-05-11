# AI Agent Dependency Risk Analysis

Static dependency-health analysis for AI agent frameworks, SDKs, web stacks,
security tools, cloud SDKs, and common Python infrastructure.

The main report is:

- [Python Dependency Health Database](ai-agent-dependency-risk.md)

It was generated with `vigil-risk` and includes calibrated notes from
`caliber-trust`. The report compares dependency counts, maintainer signals,
stale packages, false positives, and supply-chain risk patterns across major
AI-agent tooling.

## Report Index

AI agent frameworks:

- [CrewAI](reports/crewai.md)
- [LangChain](reports/langchain.md)
- [AutoGen](reports/autogen.md)
- [Semantic Kernel](reports/semantic-kernel.md)
- [DSPy](reports/dspy.md)
- [Haystack](reports/haystack.md)
- [Google ADK](reports/google-adk.md)

AI SDKs and protocols:

- [Anthropic SDK](reports/anthropic-sdk.md)
- [OpenAI SDK](reports/openai-sdk.md)
- [OpenAI Agents](reports/openai-agents.md)
- [MCP SDK](reports/mcp-sdk.md)
- [A2A SDK](reports/a2a-sdk.md)

Security tools:

- [Semgrep](reports/semgrep.md)
- [Safety](reports/safety.md)
- [Bandit](reports/bandit.md)
- [pip-audit](reports/pip-audit.md)

Infrastructure and web:

- [FastAPI](reports/fastapi.md)
- [Django](reports/django.md)
- [Flask](reports/flask.md)
- [Docker](reports/docker.md)
- [Kubernetes](reports/kubernetes.md)
- [AWS boto3](reports/boto3.md)
- [Google Cloud Storage](reports/google-cloud-storage.md)
- [Azure Storage Blob](reports/azure-storage-blob.md)

## Reproduce The Scan

```bash
pip install vigil-risk
vigil scan pyproject.toml
vigil report pyproject.toml -o risk.md
```

The repository also includes [trust-stack-demo.sh](trust-stack-demo.sh), a small
demo script that chains MCP config scanning, dependency-health reporting, and a
caliber Trust Card summary when those tools are installed locally.

## Current Caveat

The snapshots are dated March 27, 2026. Dependency health can change quickly, so
rerun `vigil-risk` before using these reports for a current security decision.
