# Skill Security and Rollback Review

Date: YYYY-MM-DD | Reviewer: [agent or person] | Status: Draft | Approved | Blocked

Complete this review before pilot deployment when a skill reads external content, runs commands, writes files, transfers data, accesses services, or affects a live environment.

## Trust and Inputs

| Review point | Decision and evidence |
|---|---|
| Approved source types | |
| Login-gated, paid, private, or client-sensitive content rule | |
| Untrusted instructions, downloads, scripts, or files rule | |
| Allowed network calls or services | |
| Prohibited input or content | |

## Execution and Data Boundaries

| Review point | Decision and evidence |
|---|---|
| Allowed commands and file locations | |
| Transfer or synchronization boundary | |
| Secrets and credential process | |
| Destructive, privilege, publication, or production-impacting approval gate | |
| Validation and logging requirements | |

## Rollback and Removal

| Review point | Decision and evidence |
|---|---|
| Last known-good commit or release | |
| Pilot installation location | |
| Rollback owner | |
| Verified replacement or removal procedure | |
| Conditions that require immediate rollback | |
| Evidence required after rollback | |

## Approval

- Reviewer:
- Approver:
- Approval date:
- Open risk or exception:
