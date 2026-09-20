# 03 — Enterprise Terraform & Azure Landing Zones

## Mission
Engineer maintainable Azure infrastructure as a platform, not a collection of root modules.

## Modules
1. Module boundaries and contracts
2. Azure Verified Modules (AVM) composition
3. Naming and tagging standards
4. Environment separation
5. Remote-state architecture
6. Platform/application landing zones
7. Policy and RBAC integration
8. Promotion strategy
9. Testing and contract validation

## Labs
- L03-01: Build a reusable module
- L03-02: Compose AVM building blocks
- L03-03: Dev/Test/Prod state separation
- L03-04: Landing-zone workload
- L03-05: Policy and RBAC gates
- L03-06: Promotion challenge

## Architecture decisions
- Shared vs dedicated platform resources
- Module vs AVM composition
- Centralized vs workload-owned services
- State isolation strategy

## Break/Fix
Module contract regression, incorrect state key, policy denial, cross-environment dependency and naming collision.

## Exit evidence
The learner can design a platform module that is reusable, testable, isolated and promotable.
