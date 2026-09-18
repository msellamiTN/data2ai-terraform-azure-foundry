# Reference Azure AI Platform

## Logical architecture

```mermaid
flowchart LR
    G[Git] --> T[Terraform]
    T --> E[Azure Environments]
    E --> F[Microsoft Foundry]
    F --> S[Azure AI Search]
    F --> ST[Azure Storage]
    F --> KV[Azure Key Vault]
    F --> M[Azure Monitor]
    MI[Managed Identity] --> F
    MI --> S
    MI --> ST
    MI --> KV
```

## Scenario architectures

### RAG

```mermaid
flowchart LR
D[Documents] --> ST[Azure Storage]
ST --> S[Azure AI Search]
S --> R[RAG Application]
R --> F[Microsoft Foundry]
```

### Agent

```mermaid
flowchart LR
U[User] --> A[Foundry Agent]
A --> L[Model]
A --> S[Search]
A --> TOOLS[Enterprise Tools]
A --> ID[Identity]
```

### Document intelligence

```mermaid
flowchart LR
I[Invoice / Document] --> ST[Storage]
ST --> DI[Document Intelligence]
DI --> DATA[Structured Data]
DATA --> APP[AI Application]
```

## Security

Identity and authorization should be reasoned about as:

**Identity → Role → Scope → Permission**
