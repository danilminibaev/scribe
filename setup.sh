#!/bin/bash

npm install
bower install

# Download the selenium JAR
SELENIUM_VERSION=2.45.0
SELENIUM_MINOR_VERSION=2.45
mkdir -p vendor
wget -O vendor/selenium-server-standalone-$SELENIUM_VERSION.jar \
  https://selenium-release.storage.googleapis.com/$SELENIUM_MINOR_VERSION/selenium-server-standalone-$SELENIUM_VERSION.jar || \
  curl -o vendor/selenium-server-standalone-$SELENIUM_VERSION.jar \
  https://selenium-release.storage.googleapis.com/$SELENIUM_MINOR_VERSION/selenium-server-standalone-$SELENIUM_VERSION.jar
