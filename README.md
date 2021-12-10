# Gatekeeper basic ruleset

My basic Gatekeeper ruleset and example / test pods. Mostly copypaste from gatekeeper-library repo.

See install.sh for instructions

## About the ruleset

* kube-system is very forcibly exluded to prevent any mishaps
* gatekeeper-system namespace is also excluded in the 1_config.yaml
* future development: investigate kube-system and gatekeeper-system exclusion needs to create more finegrained exclusions

## Customization

* [gatekeeper-library repo](https://github.com/open-policy-agent/gatekeeper-library/tree/master/library) has Kustomize templates ready.
* Each policy has the constraint section in the end => make changes there, as it currently includes sane secure defaults or in few cases example values
