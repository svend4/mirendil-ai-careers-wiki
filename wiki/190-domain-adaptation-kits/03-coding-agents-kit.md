# Domain adaptation kit: Coding agents

## Связанный scenario

- [Автономный coding agent research](../95-scenarios/03-coding-agent-research.md)

## Domain actors

- Software engineer.
- Agent runtime owner.
- Eval owner.
- Security owner.
- Product owner.

## Data checklist

- Repositories classified by sensitivity.
- Test fixtures versioned.
- Benchmark leakage checked.
- Failure traces stored with redaction.
- Customer code retention defined.

## Eval axes

- Test pass rate.
- Patch correctness.
- Minimality and maintainability.
- Long-horizon debugging success.
- Regression avoidance.
- Tool safety.

## Tools

- Code search.
- Test runner.
- Static analysis.
- Patch generator.
- Sandbox execution.
- Pull request summarizer.

## Key risks

- Benchmark-specific shortcuts.
- Unsafe repository mutation.
- Secret exposure in codebase.
- Accepting patches without trace review.

## Required artifacts

- [Tool card](../140-artifact-library/04-tool-card.md)
- [Eval report](../140-artifact-library/02-eval-report.md)
- [Model release record](../140-artifact-library/03-model-release-record.md)
