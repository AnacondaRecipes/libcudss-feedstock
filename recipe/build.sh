#!/usr/bin/env bash
set -exo pipefail

cp -rv include $PREFIX
cp -rv lib $PREFIX

check-glibc "${PREFIX}"/lib/libcudss*.so.*

