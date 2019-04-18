#!/bin/bash

./sbt -J-Xmx2G "++$TRAVIS_SCALA_VERSION" \
  "project vlm" test \
  "project slick" test \
  "project gdal" test || { exit 1; }
