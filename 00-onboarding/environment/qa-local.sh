#!/usr/bin/env bash
set -u

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
REPORT_DIR="$ROOT/qa-results"
mkdir -p "$REPORT_DIR"
CSV="$REPORT_DIR/terraform-local-qa.csv"
SUMMARY="$REPORT_DIR/terraform-local-qa-summary.txt"

echo "Lab,Check,Status,Message" > "$CSV"
pass=0
fail=0
dirs=()

while IFS= read -r -d '' file; do
  dir="$(dirname "$file")"
  found=0
  for existing in "${dirs[@]}"; do [ "$existing" = "$dir" ] && found=1 && break; done
  [ "$found" -eq 0 ] && dirs+=("$dir")
done < <(find "$ROOT" -type f -name '*.tf' -not -path '*/.terraform/*' -print0)

if [ "${#dirs[@]}" -eq 0 ]; then
  echo "[FAIL] No Terraform files found under $ROOT"
  exit 1
fi

for dir in "${dirs[@]}"; do
  lab="${dir#"$ROOT/"}"
  if terraform -chdir="$dir" fmt -check >/dev/null 2>&1; then
    echo ""$lab",fmt,PASS,"Formatting is compliant"" >> "$CSV"; ((pass++))
  else
    echo ""$lab",fmt,FAIL,"Run terraform fmt"" >> "$CSV"; ((fail++)); continue
  fi
  if terraform -chdir="$dir" init -backend=false -input=false -no-color >/dev/null 2>&1; then
    echo ""$lab",init,PASS,"Initialization without backend succeeded"" >> "$CSV"; ((pass++))
  else
    echo ""$lab",init,FAIL,"Terraform initialization failed"" >> "$CSV"; ((fail++)); continue
  fi
  if terraform -chdir="$dir" validate -no-color >/dev/null 2>&1; then
    echo ""$lab",validate,PASS,"Configuration is valid"" >> "$CSV"; ((pass++))
  else
    echo ""$lab",validate,FAIL,"Terraform validation failed"" >> "$CSV"; ((fail++))
  fi
done

{
  echo "PASS: $pass"
  echo "FAIL: $fail"
} > "$SUMMARY"

echo "=== Data2AI Academy Local Terraform QA ==="
echo "PASS: $pass"
echo "FAIL: $fail"

[ "$fail" -eq 0 ]
