# T-08: CI/CD-Integration und Terraform in der Pipeline

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new?quickstart=1)

## NovaTech-Szenario
NovaTechs Terraform-Code ist fertig — aber Tom applied immer noch manuell von seinem Laptop. Lisa fordert: "Kein manuelles `terraform apply` mehr! Alles muss durch die CI/CD-Pipeline." Dr. Weber ergänzt: "Security-Scans und Policy-Checks VOR dem Deployment." Das Team setzt GitHub Actions ein.

## Lernziele
- Terraform in GitHub Actions einbinden
- Plan/Apply-Workflow mit manuellem Approval
- Automatische Security-Scans mit tfsec
- Terraform-Linting und Formatting in der Pipeline
- Pull-Request-basierter Workflow (Plan als PR-Kommentar)

## 🚀 Schnellstart mit GitHub Codespaces

1. Klicke auf **"Open in GitHub Codespaces"**
2. Terraform, tfsec, GitHub CLI und Docker sind vorinstalliert
3. Die GitHub Actions-Workflows kannst du lokal testen und inspizieren

### Was ist vorinstalliert?
- Terraform CLI + TFLint
- **tfsec** (Security Scanner für Terraform)
- **GitHub CLI** (`gh`) für PR-Workflows
- Docker Engine
- VS Code GitHub Actions Extension

## Aufgaben

### Aufgabe 1: GitHub Actions Workflow erstellen
Vervollständige `.github/workflows/terraform.yml` — ein Workflow, der bei jedem Push und PR ausgeführt wird.

### Aufgabe 2: Security-Scan hinzufügen
Erweitere den Workflow um tfsec-Security-Scans:
```bash
cd aufgaben/terraform
tfsec .
```

### Aufgabe 3: PR-basierter Workflow
Erstelle `.github/workflows/terraform-pr.yml` — Plan-Output als PR-Kommentar.

### Aufgabe 4: Policy-Checks
Dokumentiere in `aufgaben/policy_checks.md`, welche Policies NovaTech braucht.

## Lösung
Die Musterlösungen findest du im Ordner `loesung/`.
