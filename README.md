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

## How to Contribute

We welcome [issues](https://github.com/ariga/atlas/issues) to and [pull requests](https://github.com/ariga/atlas-orb/pulls) against this repository!

## How to Publish An Update

1. Merge pull requests with desired changes to the main branch.
    - For the best experience, squash-and-merge and use [Conventional Commit Messages](https://conventionalcommits.org/).
2. Find the current version of the orb.
    - You can run `circleci orb info ariga/atlas-orb | grep "Latest"` to see the current version.
3. Create a [new Release](https://github.com/ariga/atlas-orb/releases/new) on GitHub.
    - Click "Choose a tag" and _create_ a new [semantically versioned](http://semver.org/) tag. (ex: v1.0.0)
      - We will have an opportunity to change this before we publish if needed after the next step.
4.  Click _"+ Auto-generate release notes"_.
    - This will create a summary of all of the merged pull requests since the previous release.
    - If you have used _[Conventional Commit Messages](https://conventionalcommits.org/)_ it will be easy to determine what types of changes were made, allowing you to ensure the correct version tag is being published.
5. Now ensure the version tag selected is semantically accurate based on the changes included.
6. Click _"Publish Release"_.
    - This will push a new tag and trigger your publishing pipeline on CircleCI.
    