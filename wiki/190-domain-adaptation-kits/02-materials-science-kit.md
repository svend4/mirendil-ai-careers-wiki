# Domain adaptation kit: Materials science

## Связанный scenario

- [Материаловедение и simulation-driven research](../95-scenarios/02-materials-science-modeling.md)

## Domain actors

- Materials scientist.
- Simulation engineer.
- Compute owner.
- Evaluation owner.
- Product workflow owner.

## Data checklist

- Simulation inputs versioned.
- Generated candidates have lineage.
- Physical constraints documented.
- Failed simulations stored for analysis.
- Dataset transformations reproducible.

## Eval axes

- Property prediction quality.
- Physical constraint satisfaction.
- Simulation reproducibility.
- Novelty versus known materials.
- Cost per useful candidate.

## Tools

- Simulation runner.
- Candidate generator.
- Property predictor.
- Constraint checker.
- Visualization and comparison dashboard.

## Key risks

- Expensive runaway simulations.
- Irreproducible environments.
- Over-optimization of proxy properties.
- Weak candidate comparison UX.

## Required artifacts

- [Compute request](../140-artifact-library/08-compute-request.md)
- [Experiment brief](../140-artifact-library/01-experiment-brief.md)
- [Eval report](../140-artifact-library/02-eval-report.md)
