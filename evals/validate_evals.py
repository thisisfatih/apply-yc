import json
import os
import sys

with open("evals/evals.json") as f:
    data = json.load(f)

evals = data["evals"]
errors = []

for e in evals:
    for field in ["id", "skill", "prompt", "expected_output"]:
        if not e.get(field):
            errors.append(f"eval {e.get('id', '?')}: missing or empty '{field}'")

skill_dirs = [d for d in os.listdir("skills") if os.path.isdir(f"skills/{d}")]
covered = {e.get("skill") for e in evals if e.get("skill")}
for skill in skill_dirs:
    if skill not in covered:
        errors.append(f"skill '{skill}' has no evals")

if errors:
    for err in errors:
        print(f"FAIL: {err}")
    sys.exit(1)

print(f"OK: {len(evals)} evals across {len(covered)} skills - all fields present")
