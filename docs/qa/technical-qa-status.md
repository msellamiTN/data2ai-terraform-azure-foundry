# Technical QA Status

## Executive status

The academy content has been upgraded to an execution-first learner workflow. This QA pass distinguishes content readiness from runtime verification.

## Verified in this pass

- Repository exists and is writable.
- Main branch is active.
- Learner Guide is present.
- Course-level guides are present.
- Lab guides have explicit build/run/read/validate/break/fix/challenge/solution/cleanup stages.
- Lab 02-01 is established as the Gold Standard learner lab.

## Runtime blocker

The current execution environment does not have the Terraform CLI installed. Therefore this pass cannot honestly claim that every Terraform file passed fmt, init or validate, nor that Azure/Foundry deployments succeeded.

## Required quality gate

1. terraform fmt -check
2. terraform init -backend=false
3. terraform validate
4. provider/version compatibility review
5. Azure-connected plan where required
6. independent Azure validation
7. Break/Fix reproducibility
8. cleanup verification

## Acceptance principle

Documentation completeness is not runtime correctness.

A lab becomes production-ready only after its commands, Terraform configuration, Azure API interactions, validator and cleanup path have been executed successfully.