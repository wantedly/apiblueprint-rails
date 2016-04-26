# [WIP] apiblueprint-rails

apiblueprint-rails creates [API Blueprint](https://apiblueprint.org/) boilerplate when generating scaffold by rails.

## Installation

Add this line to your rails application's Gemfile:

```ruby
gem 'apiblueprint-rails'
```

And then execute:

```bash
$ bundle
```

## Usage

After installing apiblueprint-rails to your rails application, generating scaffold just triggers apiblueprint generator.
For example,

```bash
$ rails g scaffold User name age:integer admin:boolean
```

creates `doc/users.apib` file.

You can change `doc` directory by passing `--apidoc-dir=<directory>` flag to the option.


If you want to generate apiblueprint only, you can use `rails generate apiblueprint` command.

```bash
$ rails g apiblueprint User name age:integer admin:boolean
```

generates just the same apib output above.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/apiblueprint-rails.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
