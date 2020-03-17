#!/bin/bash
set -x

for volume in gogs-data jenkins-data sonarqube-data sonarqube-extensions sonarqube-logs; do
  cd /volume/$volume
  tar czvf /data/$volume.tar.gz .
done
