local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('ee4j.jnosql', 'eclipse-jnosql') {
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
      has_wiki: true,
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
    orgs.newRepo('jnosql-artemis') {
      archived: true,
      default_branch: "master",
      description: "Eclipse JNoSQL Artemis is a flexible and extensible OxM to connect NoSQL databases. It brings an easy interface to support key-value, column family, document-oriented and graph databases with heavy driven annotation using CDI.",
      has_issues: false,
      has_projects: false,
      has_wiki: false,
      homepage: "https://www.jnosql.org/",
      topics+: [
        "connect-nosql-databases",
        "cdi",
        "diana",
        "jnosql",
        "nosql",
        "artemis",
      ],
    },
    orgs.newRepo('jnosql-parent') {
      archived: true,
      default_branch: "master",
      description: "",
      has_issues: false,
      has_projects: false,
      has_wiki: false,
      homepage: "https://www.jnosql.org/",
      topics+: [
        "artemis",
        "cdi",
        "diana",
        "communication-layer",
        "nosql-databases"
      ],
    },
    
    orgs.newRepo('jnosql-aphrodite') {
      archived: true,
      default_branch: "master",
      description: "Eclipse JNoSQL Aphrodite is the project that contains the syntax query to JNoSQL API.",
      has_issues: false,
      has_projects: true,
      has_wiki: true,
      homepage: "https://www.jnosql.org/",
      topics+: [
        "jnosql",
        "jnosql-aphrodite",
        "javaee",
        "jakartaee",
        "jsr",
        "nsq",
        "java"
      ],
    },
  ],
} + {
  # snippet added due to 'https://github.com/EclipseFdn/otterdog-configs/blob/main/blueprints/add-dot-github-repo.yml'
  _repositories+:: [
    orgs.newRepo('.github')
  ],
}
