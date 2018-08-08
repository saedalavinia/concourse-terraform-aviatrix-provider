#!/usr/bin/env bash
[ "$VERBOSE" ] && set -x

set -euo pipefail
THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

go version
mkdir -p $GOPATH/src/github.com/terraform-providers
cd $GOPATH/src/github.com/terraform-providers
git clone https://github.com/AviatrixSystems/terraform-provider-aviatrix.git
cd $GOPATH/src/github.com/terraform-providers/terraform-provider-aviatrix
make build

mkdir -p $THIS_DIR/output/linux-amd64