System.config({
  "transpiler": "babel",
  "paths": {
    "*": "*.js",
    "patrickandgemma.com/*": "../project/lib/*.js",
    "github:*": "jspm_packages/github/*.js",
    "npm:*": "jspm_packages/npm/*.js"
  }
});

System.config({
  "map": {
    "angular": "github:angular/bower-angular@1.3.9",
    "angular-animate": "github:angular/bower-angular-animate@1.3.9",
    "angular-bootstrap": "github:angular-ui/bootstrap-bower@0.12.0",
    "angular-cookies": "github:angular/bower-angular-cookies@1.3.9",
    "angular-flash": "github:remind101/angular-flash@0.0.8",
    "angular-mocks": "github:angular/bower-angular-mocks@1.3.9",
    "angular-resource": "github:angular/bower-angular-resource@1.3.10",
    "angular-sanitize": "github:angular/bower-angular-sanitize@1.3.9",
    "angular-touch": "github:angular/bower-angular-touch@1.3.10",
    "angular-ui-router": "github:angular-ui/ui-router@0.2.13",
    "bootstrap": "github:angular-ui/bootstrap@0.12.0",
    "bootstrap-sass": "github:twbs/bootstrap-sass@3.3.3",
    "lodash": "npm:lodash@3.1.0",
    "nodelibs-process": "github:jspm/nodelibs-process@0.1.1",
    "process": "npm:process@0.10.0",
    "text": "github:systemjs/plugin-text@0.0.2",
    "ui-utils": "github:angular-ui/ui-utils@0.2.1",
    "github:angular-ui/bootstrap-bower@0.12.0": {
      "angular": "github:angular/bower-angular@1.2.28"
    },
    "github:angular-ui/ui-router@0.2.13": {
      "angular": "github:angular/bower-angular@1.3.9"
    },
    "github:angular/bower-angular-animate@1.3.9": {
      "angular": "github:angular/bower-angular@1.3.9"
    },
    "github:angular/bower-angular-cookies@1.3.9": {
      "angular": "github:angular/bower-angular@1.3.9"
    },
    "github:angular/bower-angular-mocks@1.3.9": {
      "angular": "github:angular/bower-angular@1.3.0-beta.19"
    },
    "github:angular/bower-angular-sanitize@1.3.9": {
      "angular": "github:angular/bower-angular@1.3.9"
    },
    "github:jspm/nodelibs-process@0.1.1": {
      "process": "npm:process@0.10.0"
    },
    "npm:lodash@3.1.0": {
      "process": "github:jspm/nodelibs-process@0.1.1"
    }
  }
});

