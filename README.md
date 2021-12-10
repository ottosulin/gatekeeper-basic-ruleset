# Gatekeeper basic ruleset

My basic Gatekeeper ruleset and example / test pods.

See install.sh for instructions

## About the ruleset

* kube-system is very forcibly exluded to prevent any mishaps
* in the 1_config.yaml "gatekeeper-system" namespace is also exluded
* future development: investigate kube-system and gatekeeper-system exclusion needs to create more finegrained exclusions

## Customization

* Gatekeeper library has Kustomize templates ready: https://github.com/open-policy-agent/gatekeeper-library/tree/master/library
* Each policy has the constraint section in the end => make changes here, currently includes secure defaults or in some cases example values
