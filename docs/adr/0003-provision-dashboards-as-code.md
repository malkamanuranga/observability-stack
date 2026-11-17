# 3. Provision dashboards as code

Status: accepted

## Context
Dashboards created by hand in the UI are lost when the container is rebuilt.

## Decision
Keep dashboards as JSON files and provision them at startup.

## Consequences
Dashboards are versioned and reviewable. Editing needs a JSON change and a commit.
