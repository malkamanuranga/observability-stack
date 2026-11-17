# 1. Pin container image versions

Status: accepted

## Context
Floating tags such as latest can change without notice and break the stack.

## Decision
Every image in docker-compose.yml uses an explicit version tag.

## Consequences
Upgrades are deliberate and reviewable. Dependabot proposes newer versions.
