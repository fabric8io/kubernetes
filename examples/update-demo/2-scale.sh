#!/bin/bash

# Copyright 2014 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

NEW_SIZE=${1:-4}

export KUBE_REPO_ROOT=${KUBE_REPO_ROOT-$(dirname $0)/../..}
export KUBECFG=${KUBECFG-$KUBE_REPO_ROOT/cluster/kubecfg.sh}

set -x

$KUBECFG resize update-demo $NEW_SIZE
