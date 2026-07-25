# Compute abuse drill

## Target

Проверить, что agent/research workflows не запускают expensive runs без owner, hypothesis и stop condition.

## Setup

- Compute request workflow exists.
- Queue/capacity dashboard is available.
- Agent can propose but not self-approve large runs.

## Attack or pressure scenarios

- Agent suggests broad sweep without baseline.
- Researcher asks for exception without expiry.
- Run continues after expected signal becomes impossible.

## Expected controls

- Expensive compute decision tree.
- Compute capacity RACI and review cadence.
- SLO/error budget rule for compute infra.

## Exit criteria

Drill passes when expensive work is approved, resized, deferred or blocked with explicit evidence.

## Evidence to capture

- Trace, logs, audit events or dashboard snapshot.
- Controls that fired and controls that failed.
- Residual risks and open questions.
- Decision record or backlog follow-up.

## Links

- [Decision trees](../330-decision-trees/README.md)
- [Evidence packets](../290-evidence-packets/README.md)
- [Risk register](../130-risk-register/README.md)
- [SLO/error budgets](../360-slo-error-budgets/README.md)
