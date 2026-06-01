# NovaTech Policy-Checks — Lösung

### Sicherheits-Policies
| Policy | Beschreibung | Tool |
|--------|-------------|------|
| no-hardcoded-secrets | Keine hart kodierten Passwörter oder API-Keys | tfsec, git-secrets |
| encryption-at-rest | Verschlüsselung für alle Storage-Ressourcen | tfsec (aws-s3-encryption) |
| no-public-buckets | Keine öffentlichen S3-Buckets | tfsec, AWS Config |
| no-open-sg | Keine offenen Security Groups (0.0.0.0/0 für SSH/RDP) | tfsec, Sentinel |
| tls-required | HTTPS/TLS für alle öffentlichen Endpunkte | tfsec |

### Naming-Conventions
| Ressource | Namensformat | Beispiel |
|-----------|-------------|---------|
| EC2 | {projekt}-{umgebung}-{rolle}-{nr} | novatech-prod-api-01 |
| S3 | {projekt}-{umgebung}-{zweck} | novatech-prod-assets |
| RDS | {projekt}-{umgebung}-{engine} | novatech-prod-postgres |

### Tagging-Policies
| Tag | Pflicht? | Beispielwert |
|-----|----------|-------------|
| Project | Ja | novatech |
| Environment | Ja | prod/staging/dev |
| Team | Ja | platform |
| ManagedBy | Ja | terraform |
| CostCenter | Ja | CC-4711 |

### Cost-Policies
| Policy | Beschreibung |
|--------|-------------|
| instance-size-limit | Dev: max t3.medium, Staging: max t3.large |
| auto-shutdown-dev | Dev-Instanzen nachts und am Wochenende stoppen |
| cost-estimation | Infracost in Pipeline für Kostenabschätzung |
