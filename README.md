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
- [CrewAI Cascade](reports/crewai-cascade.md)
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
- [A2A SDK alternate scan](reports/a2a.md)

ML frameworks:

- [TensorFlow](reports/tensorflow.md)
- [PyTorch](reports/torch.md)
- [Transformers](reports/transformers.md)

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

Backend:

- [Celery](reports/celery.md)
- [SQLAlchemy](reports/sqlalchemy.md)
- [Redis](reports/redis.md)
- [Alembic](reports/alembic.md)
- [Uvicorn](reports/uvicorn.md)

DevOps:

- [Ansible Core](reports/ansible-core.md)
- [Fabric](reports/fabric.md)

Testing and developer tools:

- [pytest](reports/pytest.md)
- [tox](reports/tox.md)
- [nox](reports/nox.md)
- [Hypothesis](reports/hypothesis.md)
- [Typer](reports/typer.md)
- [Rich](reports/rich.md)
- [HTTPie](reports/httpie.md)
- [Black](reports/black.md)
- [mypy](reports/mypy.md)
- [Top PyPI packages](reports/top-python.md)

## Reproduce The Scan

```bash
pip install vigil-risk
vigil scan pyproject.toml
vigil report pyproject.toml -o risk.md
```

The repository also includes [trust-stack-demo.sh](trust-stack-demo.sh), a small
demo script that chains MCP config scanning, dependency-health reporting, and a
caliber Trust Card summary when those tools are installed locally.

## Freshness Guard

These reports are security-adjacent snapshots, not live dependency intelligence.
Use the local guard before treating them as current:

```bash
python3 tools/check_report_freshness.py
```

By default, the guard fails if any generated report is more than 30 days old.
That failure is intentional: refresh the `vigil-risk` reports before making a
current security decision.

## Current Caveat

The snapshots are dated March 27, 2026. Dependency health can change quickly, so
rerun `vigil-risk` before using these reports for a current security decision.
