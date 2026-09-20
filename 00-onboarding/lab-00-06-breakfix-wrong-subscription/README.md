# LAB 00-06 — Break/Fix: Wrong Subscription

## Business Scenario
A deployment appears correct but lands in the wrong Azure subscription.

## Mission
Diagnose the incident using evidence only.

## Learning objectives
- distinguish identity from subscription context;
- trace a deployment target;
- prevent recurrence.

## BREAK
A deliberately incorrect subscription context is supplied.

## FIX
Collect account and subscription evidence, identify the mismatch, restore the intended context and rerun validation.

## EXPLAIN
State the root cause and the prevention control.

## VALIDATE
Prove both the active context and the expected Azure resource scope.

## CHALLENGE
Design a pre-deployment guard that blocks the wrong subscription.
