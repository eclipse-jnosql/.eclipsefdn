local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-jnosql') {
  settings+: {
    description: "",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('jnosql') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse JNoSQL is a framework which has the goal to help Java developers to create Jakarta EE applications with NoSQL.",
      has_discussions: true,
      has_wiki: false,
      homepage: "",
      topics+: [
        "database",
        "flexible",
        "graph-database",
        "jnosql",
        "nosql",
        "nosql-databases"
      ],
      web_commit_signoff_required: false,
    },
    orgs.newRepo('jnosql-databases') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "This project contains Eclipse JNoSQL databases",
      has_issues: false,
      has_projects: false,
      has_wiki: false,
      homepage: "https://www.jnosql.org/",
      topics+: [
        "jakartaee",
        "java",
        "jnosql",
        "microprofile",
        "nosql",
        "nosql-databases"
      ],
      web_commit_signoff_required: false,
    },
    orgs.newRepo('jnosql-extensions') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "This project contains all specialization to Eclipse JNoSQL. The specific behavior in a NoSQL database matters, that's why there are Eclipse JNoSQL Mapper specializations.",
      has_issues: false,
      has_projects: false,
      has_wiki: false,
      homepage: "https://www.jnosql.org/",
      topics+: [
        "jakartaee",
        "java",
        "jnosql",
        "microprofile"
      ],
      web_commit_signoff_required: false,
    },
  ],
} + {
  # snippet added due to 'https://github.com/EclipseFdn/otterdog-configs/blob/main/blueprints/add-dot-github-repo.yml'
  _repositories+:: [
    orgs.newRepo('.github')
  ],
}