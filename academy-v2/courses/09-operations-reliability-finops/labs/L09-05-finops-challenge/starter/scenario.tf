# Operations/capstone Terraform for L09-05-finops-challenge
resource "azurerm_consumption_budget_resource_group" "lab" { name="L09-05-finops-challenge-budget" resource_group_id=azurerm_resource_group.this.id amount=100 time_grain="Monthly" time_period { start_date="2026-09-01T00:00:00Z" } notification { enabled=true threshold=80 operator="GreaterThan" contact_emails=[] } }
