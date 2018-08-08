#!/usr/bin/env bash
[ "$VERBOSE" ] && set -x

set -euo pipefail
THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

go version
mkdir -p $GOPATH/src/github.com/terraform-providers
pushd $GOPATH/src/github.com/terraform-providers
git clone https://github.com/AviatrixSystems/terraform-provider-aviatrix.git
pushd $GOPATH/src/github.com/terraform-providers/terraform-provider-aviatrix
make build

popd
popd
mkdir -p output/linux-amd64
cp $GOPATH/bin/terraform-provider-aviatrix output/linux-amd64/
