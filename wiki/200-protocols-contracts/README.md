# 200-protocols-contracts

Protocols и contracts фиксируют минимальные схемы данных для AI R&D платформы. Они нужны, чтобы agent runtime, evals, tools, audit, artifacts и product UI говорили на одном языке.

## Contracts

- [Agent trace schema](01-agent-trace-schema.md)
- [Tool contract schema](02-tool-contract-schema.md)
- [Eval result schema](03-eval-result-schema.md)
- [Audit event schema](04-audit-event-schema.md)
- [Artifact metadata schema](05-artifact-metadata-schema.md)
- [Decision record schema](06-decision-record-schema.md)

## Принцип

Каждый contract должен быть достаточно строгим для проверки и достаточно простым, чтобы его можно было заполнять в research workflow без лишней бюрократии.
