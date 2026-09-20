# LAB 00-02 — Azure CLI Authentication

## Business Scenario
A platform engineer must authenticate to Azure without guessing which tenant or subscription is active.

## Mission
Authenticate with Azure CLI and prove the selected context.

## Learning objectives
- understand tenant, account and subscription context;
- authenticate safely;
- capture evidence without exposing credentials.

## Architecture
`LEARNER → AZURE CLI → MICROSOFT ENTRA ID → SUBSCRIPTION`

## BUILD
Authenticate and inspect the active account and subscriptions.

## VALIDATE
The expected subscription is selected and the learner can query a harmless resource.

## BREAK
Switch to a different available subscription or deliberately use an invalid context.

## FIX
Diagnose the mismatch from CLI evidence and restore the expected context.

## EXPLAIN
Explain why an apparently successful login can still produce authorization or deployment errors.

## CHALLENGE
Write a context check that fails fast when the wrong subscription is selected.

## SOLUTION
Compare the acceptance criteria and implementation after the challenge.

## CLEANUP
Sign out only if required by the shared training environment policy.
