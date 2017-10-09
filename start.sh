#!/bin/bash
bundle exec rails db:migrate
bundle exec rails s -p 8080 -b 0.0.0.0
