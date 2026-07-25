# Domain adaptation kit: Robotics

## Связанный scenario

- [Robotics sim-to-real research](../95-scenarios/05-robotics-sim-to-real.md)

## Domain actors

- Robotics researcher.
- Simulation engineer.
- Safety owner.
- RL environment owner.
- Hardware operator.

## Data checklist

- Simulation trajectories versioned.
- Real-world test data sensitivity classified.
- Safety incidents linked to policies.
- Checkpoints tied to environment versions.
- Replay artifacts retained for failure analysis.

## Eval axes

- Robustness under perturbation.
- Safety constraint adherence.
- Sim-to-real transfer quality.
- Recovery from unexpected states.
- Reward hacking resistance.

## Tools

- Simulation runner.
- Trajectory replay.
- Safety verifier.
- Policy checkpoint manager.
- Real-world rollout approval workflow.

## Key risks

- Sim-to-real gap.
- Reward hacking in simulation.
- Unsafe real-world rollout.
- Irreproducible trajectories.

## Required artifacts

- [Experiment brief](../140-artifact-library/01-experiment-brief.md)
- [Compute request](../140-artifact-library/08-compute-request.md)
- [Threat model](../140-artifact-library/06-threat-model.md)
