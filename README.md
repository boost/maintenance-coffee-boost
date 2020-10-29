# README

## Setup
```bash
rbenv install $(cat .ruby-version)
bundle install
yarn install --check-files
rails db:drop db:create db:migrate db:seed

rails server
```

Use the default user provided in `db/seeds.rb` to log in.
