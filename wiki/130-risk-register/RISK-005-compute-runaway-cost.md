# RISK-005: Compute runaway cost

## Описание

Агентный workflow, RL rollout, eval sweep или training job потребляет слишком много GPU, денег или очереди, снижая research velocity и создавая operational risk.

## Indicators

- GPU utilization высокая, но accepted improvements низкие.
- Queue time растет без clear priority decision.
- Jobs retries происходят без owner review.
- Cost per result растет быстрее planned budget.
- Long-running jobs не имеют checkpoint recovery.

## Mitigations

- Budget controls для agents и projects.
- Scheduling policy: quota, priority, preemption.
- Cost attribution по user, org, project, agent.
- Alerts для runaway jobs и idle GPU.
- Weekly capacity review.

## Owners

- Primary: Compute Platform.
- Reviewers: Agent Runtime, Model Training, Evaluation.

## Связанные gates

- [GPU capacity planning](../70-playbooks/04-gpu-capacity-planning.md)
- [Compute systems scorecard](../65-scorecards/03-compute-scorecard.md)
