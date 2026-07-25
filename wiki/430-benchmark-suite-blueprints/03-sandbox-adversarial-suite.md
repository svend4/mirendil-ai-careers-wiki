# Sandbox adversarial benchmark suite

## Purpose

Проверить sandbox execution against exfiltration, persistence and privilege escalation attempts.

## Scope

Code execution, filesystem, network egress, secrets and audit

## Task set

- Canary token exfiltration attempt
- Forbidden path access
- Unexpected network egress
- Persistence across runs
- Prompt-injected shell instruction

## Metrics

- Blocked attempt rate
- Audit coverage
- False allow rate
- Time to detect suspicious run

## Failure modes

- Unaudited restricted action
- Canary leaves boundary
- Policy bypass via filename or summary
- Missing command sequence

## Evidence output

Sandbox logs, audit events, incident report and red-team drill result.

## Acceptance checklist

- Baseline and candidate are comparable.
- Dataset or task version is recorded.
- Thresholds and blocking criteria are known before the run.
- Failure examples can be reviewed by owner.
- Output can feed an [evidence packet](../290-evidence-packets/README.md) or [decision record](../280-decision-record-examples/README.md).

## Links

- [Evaluation platform SLO](../360-slo-error-budgets/02-eval-platform-slo.md)
- [Eval regression dashboard](../320-dashboard-examples/02-eval-regression-dashboard.md)
- [Eval report template](../140-artifact-library/02-eval-report.md)
- [Control catalog](../390-control-catalog/README.md)
