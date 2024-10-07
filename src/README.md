# Circle Orbs for Atlas

This repository contains CircleCI Orbs for working with [Atlas](https://atlasgo.io).

To learn more about the recommended way to build workflows, read our guide on 
[Modern CI/CD for Databases](https://atlasgo.io/guides/modern-database-ci-cd).

## Orbs

| Orb                                                                                                  | Description                                                      |
|---------------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
| [atlas-orb/setup](https://circleci.com/developer/orbs/orb/ariga/atlas-orb#commands-setup)               | Setup the Atlas CLI and optionally login to Atlas Cloud          |
| [atlas-orb/migrate_push](https://circleci.com/developer/orbs/orb/ariga/atlas-orb#commands-migrate_push) | Push migrations to [Atlas Registry](https://atlasgo.io/registry) |
| [atlas-orb/migrate_lint](https://circleci.com/developer/orbs/orb/ariga/atlas-orb#commands-migrate_lint) | Lint migrations (required `atlas login` )                        |
| [atlas-orb/migrate_apply](https://circleci.com/developer/orbs/orb/ariga/atlas-orb#commands-migrate_apply) | Apply migrations to a database                                 |
| [atlas-orb/migrate_down](https://circleci.com/developer/orbs/orb/ariga/atlas-orb#commands-migrate_down) | Revert migrations to a database                                  |
| [atlas-orb/migrate_test](https://circleci.com/developer/orbs/orb/ariga/atlas-orb#commands-migrate_test) | Test migrations on a database                                    |
| [atlas-orb/schema_test](https://circleci.com/developer/orbs/orb/ariga/atlas-orb#commands-schema_test)   | Test schema on a database                                        |
| [atlas-orb/schema_push](https://circleci.com/developer/orbs/orb/ariga/atlas-orb#commands-schema_push)   | Push a schema to [Atlas Registry](https://atlasgo.io/registry)   |
| [atlas-orb/schema_plan](https://circleci.com/developer/orbs/orb/ariga/atlas-orb#commands-schema_plan)   | Plan a declarative migration for a schema transition             |
| [atlas-orb/schema_plan_approve](https://circleci.com/developer/orbs/orb/ariga/atlas-orb#commands-schema_plan_approve) | Approve a declarative migration plan               |
| [atlas-orb/schema_apply](https://circleci.com/developer/orbs/orb/ariga/atlas-orb#commands-schema_apply) | Apply a declarative migrations to a database                     |

## Examples

Check out this [link](https://atlasgo.io/integrations/circleci-orbs) for more information on how to use the orbs.