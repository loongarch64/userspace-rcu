#!/bin/sh

for a in test_urcu_gc test_urcu_gc_mb test_qsbr_gc; do
	echo "./${a} $*" | tee -a runall.detail.log
	/usr/bin/time --append --output runall.detail.log ./${a} $*
done

