# Agent Contract Standard

Every production-oriented DATA2AI agent must declare:

| Contract field | Required question |
|---|---|
| Identity | Who is the agent? |
| Scope | Which business task is it allowed to perform? |
| Authority | Which actions may it request? |
| Tools | Which tools can it invoke? |
| Inputs | What schema is accepted? |
| Outputs | What schema is returned? |
| Limits | What prevents runaway behavior? |
| Telemetry | What is recorded? |
| Evaluation | How is behavior tested? |
| Escalation | When is human approval required? |

## Security rule

The agent may request an action, but deterministic policy decides whether that action is authorized.

AGENT → POLICY GATE → TOOL → DATA POLICY → RESULT

A prompt or instruction is not an authorization boundary.
