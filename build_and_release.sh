#!/bin/sh

# shellcheck disable=SC2164
cd android
echo "fastlane test Started..."
#fastlane android test --env aus
bundle install
bundle exec fastlane android test
echo "fastlane test completed."
