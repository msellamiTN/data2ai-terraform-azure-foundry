# LAB 04-01 — Foundry Resource

## Scenario
The platform team needs the foundational Microsoft Foundry Azure resource before creating AI projects.

## Mission
Provision the foundation with Terraform and prove the Azure resource contract.

## BUILD
Use the starter configuration. Set naming, location and tags through variables. Run fmt, init, validate and plan before apply.

## VALIDATE
Confirm the resource exists in the intended subscription/resource group and capture resource ID, location and provisioning state.

## BREAK
Change the target resource group or required input to create a controlled deployment mismatch.

## FIX
Collect Azure CLI evidence, identify the scope/configuration mismatch, correct it and rerun validation.

## CHALLENGE
Parameterize the resource naming and add an enterprise ownership tag without hard-coding it.

## SOLUTION
Review solution only after completing the challenge.

## CLEANUP
Destroy the training resource and verify the resource group is clean.
