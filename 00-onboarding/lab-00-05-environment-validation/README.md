# LAB 00-05 — Environment Validation

## Business Scenario
A training environment must fail fast before expensive AI infrastructure is deployed.

## Mission
Build a repeatable preflight validation.

## Learning objectives
- turn prerequisites into executable checks;
- report PASS/FAIL clearly;
- separate environment failures from lab failures.

## BUILD
Create a PowerShell and Bash validation script for the required tools and Azure context.

## VALIDATE
The validator produces explicit PASS/FAIL results and a useful next action.

## BREAK
Introduce one controlled prerequisite failure.

## FIX
Use the validator output to repair the environment.

## CHALLENGE
Add one additional check without changing the existing contract.

## SOLUTION
Compare your implementation with the reference validator.

## CLEANUP
Remove temporary test changes.
