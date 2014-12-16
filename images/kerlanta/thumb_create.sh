#!/usr/bin/env bash
find . -iname '*.jpg' -execdir convert '{}' -resize 250x250  thumb_'{}' \;
