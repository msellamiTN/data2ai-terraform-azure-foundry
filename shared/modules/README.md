# Shared Terraform Modules

Enterprise labs progressively introduce reusable modules.

Planned module boundaries:

- foundry
- project
- model
- storage
- search
- key-vault
- identity
- monitoring

Modules should expose stable interfaces and keep environment-specific values outside the module implementation.
