# DATA2AI Enterprise AI Platform Reference Architecture

```text
                         ENTERPRISE AI PLATFORM
                                  |
        +-------------------------+-------------------------+
        |                         |                         |
   GOVERNANCE              PLATFORM ENGINEERING       AI WORKLOAD
        |                         |                         |
   Entra / RBAC             Terraform / AVM          Agents / RAG
   Policy / PIM             CI/CD / Tests             Tools / Apps
   NIST / OWASP             Validation                Evaluations
        |                         |                         |
        +-------------------------+-------------------------+
                                  |
                         AZURE LANDING ZONE
                         /                 \
                       HUB                 SPOKES
                       |                     |
                  Firewall/DNS          AI Workloads
                  Connectivity          Private Endpoints
                                  |
                         AI CONTROL PLANE
                    Foundry / Models / Agents
                                  |
                         KNOWLEDGE PLANE
                  AI Search / Storage / Data
                                  |
                         SECURITY PLANE
            Managed Identity / KV / Private Link / Policy
                                  |
                      OBSERVABILITY + FINOPS
             Logs / Metrics / Traces / Evals / Cost
```

The architecture is intentionally separated into governance, platform engineering, AI workload, control, knowledge, security and operations planes.
