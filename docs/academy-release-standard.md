# Data2AI Academy — Release Standard

## Release objective
A course is **READY** only when its learner experience, executable implementation, validation, troubleshooting, instructor material, and GitHub Pages publication are coherent.

## Non-negotiable learning loop
**LEARN → BUILD → VALIDATE → BREAK → FIX → CHALLENGE → SOLUTION → CLEANUP**

## Lab Quality Gate
Every executable lab must contain:
- learner-facing README;
- explicit mission and learning objectives;
- prerequisites and environment checks;
- architecture or dependency view;
- exact files to create or edit;
- executable commands;
- expected evidence;
- automated validation;
- controlled Break/Fix;
- diagnosis path without exposing the solution;
- independent Challenge;
- complete Reference Solution;
- cleanup;
- no embedded secrets;
- reproducible Terraform syntax;
- version compatibility;
- learner evidence expectations.

## Azure quality gate
For Azure labs, `terraform validate` is only a syntax/configuration gate.

A production-quality lab must additionally prove the intended Azure contract where execution is required:
- correct tenant;
- correct subscription;
- correct resource group/scope;
- correct resource existence;
- correct configuration;
- correct identity/RBAC where applicable;
- correct outputs/state;
- correct cleanup.

## Break/Fix quality gate
A Break/Fix scenario must be reproducible, safe, diagnosable from evidence, explainable by root cause, repairable without opening the solution, followed by validation, and followed by a prevention question.

## Challenge quality gate
The Challenge must change the problem enough to prevent copy/paste completion.

It should specify:
- business/engineering requirement;
- constraints;
- acceptance criteria;
- expected evidence;
- cleanup requirement.

It should **not** provide the implementation steps.

## Instructor quality gate
Instructor material must include delivery guidance, hint ladder, common failures, rubric, expected evidence, and solution timing guidance.

## GitHub Pages quality gate
Every lab README is the source of truth.

The Pages pipeline must:
1. discover lab READMEs;
2. generate learner pages;
3. display learning-loop maturity;
4. validate the generated page contract;
5. build Jekyll;
6. publish through GitHub Pages.

The Pages site must never become a manually maintained duplicate of the repository.

## Definition of Academy Ready
An Academy release is ready when all targeted labs pass the Lab Quality Gate, executable Terraform passes formatting/init/validation, Azure execution has been tested where required, Break/Fix is reproducible, Challenges are independent, solutions are complete, instructor and learner layers are present, GitHub Pages builds successfully, no secrets are committed, and the capstone has an objective rubric.

## Status vocabulary
Use only:
- **SCAFFOLD** — documentation exists but execution is incomplete;
- **BUILDING** — executable implementation is being completed;
- **VALIDATED** — executable and automated checks pass;
- **READY** — learner, instructor, Azure, Break/Fix, Challenge and Pages gates pass.

Do not mark a lab READY from Terraform syntax alone.