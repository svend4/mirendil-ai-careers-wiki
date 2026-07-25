# Domain adaptation kit: Life sciences

## Связанный scenario

- [AI для drug discovery lab](../95-scenarios/01-drug-discovery-ai-lab.md)

## Domain actors

- Research scientist.
- Computational biologist.
- Data steward.
- Compliance owner.
- Model/eval owner.

## Data checklist

- Sensitive biological data classified.
- Dataset cards for public, licensed and customer datasets.
- Clear deletion path for customer-provided data.
- Separation of training data and eval sets.
- Provenance for publications, assays and derived features.

## Eval axes

- Scientific plausibility.
- Citation/evidence quality.
- Hallucination resistance.
- Domain constraint satisfaction.
- Reproducibility of computational steps.

## Tools

- Literature retrieval.
- Molecular property calculators.
- Dataset transformation pipeline.
- Experiment notebook execution.
- Domain verifier registry.

## Key risks

- Sensitive data leakage.
- Unverified scientific claims.
- Eval contamination.
- Proxy reward optimized instead of lab usefulness.

## Required artifacts

- [Dataset card](../140-artifact-library/05-dataset-card.md)
- [Eval report](../140-artifact-library/02-eval-report.md)
- [Threat model](../140-artifact-library/06-threat-model.md)
