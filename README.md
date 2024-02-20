# README

This README would normally document whatever steps are necessary to get the
application up and running.

# Some important CLI commands

## To start server in CLI
### (windows 11 cmd) 
  - Navigate to the app home directory
  - run using the command: ruby bin/rails s
### (on wsl)
  - Navigate to app home directory
  - run using the command: bin/dev
  - alternatively: bin/rails server

## To generate a new page (tested in the home page)
  - Command: bin/rails generate controller NAME [action action] [options]
  - Example: bin/rails generate controller Greetings hello
  - Full documentation: https://guides.rubyonrails.org/command_line.html

## Changing DB from sqlite to postgresql using cli
  - >> bundle exec rails db:system:change --to=postgresql 
  - https://www.youtube.com/watch?v=AA6GZBPeveU

# Database
Sqlite

# Ruby version
ruby 3.3.0 (2023-12-25 revision 5124f9ac75) [x64-mingw-ucrt]

# Resources:
Code (https://www.youtube.com/watch?v=PjVzoW-rB9U)
