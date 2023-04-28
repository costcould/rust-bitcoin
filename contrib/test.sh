#!/bin/sh

set -ex

CRATES="bitcoin hashes internals fuzz"

for crate in ${CRATES}
do
    (
        cd "$crate"
        ./contrib/test.sh
    )
done

exit 0
