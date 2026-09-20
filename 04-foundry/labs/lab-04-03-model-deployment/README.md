# LAB 04-03 — Model Deployment Contract

## Scenario
An AI workload needs a governed model deployment configuration.

## Mission
Represent deployment parameters as explicit infrastructure inputs rather than hidden manual settings.

## BUILD
Create the deployment contract in Terraform variables and outputs. Validate the configuration before using any model endpoint.

## VALIDATE
Verify model name, deployment name, region and intended capacity against the approved lab requirements.

## BREAK / FIX
Introduce an invalid or inconsistent deployment parameter and diagnose it from plan/validation evidence.

## CHALLENGE
Make the deployment configuration environment-specific without duplicating Terraform resources.

## CLEANUP
Remove training deployment resources according to the lab environment policy.
